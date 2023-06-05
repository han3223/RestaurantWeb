package com.example.front

import com.example.EatsCount
import com.example.FoodCount
import com.example.MySession
import com.example.bonappetitandroid.dto.Profile
import com.example.bonappetitandroid.dto.ProfileRegistration
import com.example.bonappetitandroid.repository.client.SupabaseProfileClient
import com.example.dto.Category
import com.example.dto.Food
import com.example.dto.Subcategory
import com.example.repository.client.SupabaseFoodClient
import io.ktor.http.*
import io.ktor.server.application.*
import io.ktor.server.freemarker.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import io.ktor.server.sessions.*
import java.util.*


fun Route.getHomepage() {
    val listFoodSort = mutableListOf<Food>()

    get("/") {
        call.respondRedirect("bonappetit")
    }

    route("/profile") {
        get("/{name}") {
            val session = call.sessions.get<MySession>()
            val count = session?.countEat ?: 0
            val auth = true
            val profile = call.sessions.get<ProfileRegistration>()
            println(profile)

            val params = mapOf("count" to count, "auth" to auth, "profile" to profile)
            call.respond(FreeMarkerContent("profile_page.ftl", params, "e"))
        }

        post("/registration") {
            val param = call.receiveParameters()
            val profileLastName = param["last_name"] ?: return@post call.respond(HttpStatusCode.BadRequest)
            val profileFirstName = param["first_name"] ?: return@post call.respond(HttpStatusCode.BadRequest)
            val profilePhoneNumber = param["tel"] ?: return@post call.respond(HttpStatusCode.BadRequest)
            val profileEmail = param["email"] ?: return@post call.respond(HttpStatusCode.BadRequest)
            val profilePassword = param["password"] ?: return@post call.respond(HttpStatusCode.BadRequest)
            val profileMorePassword = param["more_password"] ?: return@post call.respond(HttpStatusCode.BadRequest)

            val profile = ProfileRegistration(
                "$profileLastName $profileFirstName",
                profilePhoneNumber,
                profileEmail,
                profilePassword,
                "user",
                null
            )
            println("Start registration")
            SupabaseProfileClient.INSTANCE.setProfile(profile)
            call.sessions.set(profile)

            call.respondRedirect("/profile/$profileLastName $profileFirstName")
        }

        post("/login") {
            val param = call.receiveParameters()
            val profilePhoneNumber = param["tel"] ?: return@post call.respond(HttpStatusCode.BadRequest)
            val profilePassword = param["password"] ?: return@post call.respond(HttpStatusCode.BadRequest)

            val profile = SupabaseProfileClient.INSTANCE.getProfile(profilePhoneNumber, profilePassword)

            if (profile != null) {
                val profileRegistration = ProfileRegistration(
                    profile.FIO,
                    profile.telephoneNumber,
                    profile.email,
                    profile.password,
                    profile.role,
                    profile.address
                )
                call.sessions.set(profileRegistration)
                call.respondRedirect("/profile/${profile.FIO}")
            }
        }

        route("/forgot") {
            post("/phone") {
                val param = call.receiveParameters()
                val profilePhoneNumber = param["tel"] ?: return@post call.respond(HttpStatusCode.BadRequest)

                val profile = SupabaseProfileClient.INSTANCE.getProfileByPhone(profilePhoneNumber)

            }
        }
    }

    route("bonappetit") {
        get {
            try {
                val session = call.sessions.get<MySession>()
                val count = session?.countEat ?: 0

                val categories = SupabaseFoodClient.INSTANCE.getAllCategories()
                val realCategory = mutableListOf<Category>()

                val allFood = SupabaseFoodClient.INSTANCE.getAllFood()

                val countEats = call.sessions.get<FoodCount>()

                categories.forEach { category ->
                    val realSubcategory = mutableListOf<Subcategory>()
                    SupabaseFoodClient.INSTANCE.getAllCategoryToSubcategory(category.id).map { item ->
                        val subcategory = SupabaseFoodClient.INSTANCE.getSubcategory(item.subcategory)
                        val food =
                            allFood.filter { it.category == category.id && (it.subcategory == subcategory.id || it.subcategory == null) }
                        if (countEats != null) {
                            food.forEach { foodItem ->
                                countEats.index.forEachIndexed { index, countItem ->
                                    if (foodItem.id == countItem)
                                        foodItem.num = countEats.num[index]
                                }
                            }
                        }
                        realSubcategory.add(
                            Subcategory(
                                subcategory.subcategory,
                                subcategory.route,
                                food.sortedBy { it.id })
                        )
                    }
                    realCategory.add(Category(category.category, category.route, realSubcategory))
                }

                val listNumEat = mutableListOf<Int>()
                if (call.sessions.get<EatsCount>() == null) {
                    realCategory.forEach { category ->
                        category.subcategory.forEach { subcategory ->
                            subcategory.eat.forEach { food ->
                                listFoodSort.add(food)
                                listNumEat.add(food.num)
                            }
                        }
                    }
                    call.sessions.set(EatsCount(listNumEat))
                }


                val params = mapOf("categories" to realCategory, "count" to count)
                call.respond(FreeMarkerContent("homepageTest.ftl", params, "e"))
            } catch (e: Exception) {
                e.printStackTrace()
            }
        }

        get("profile") {
            val session = call.sessions.get<MySession>()
            val count = session?.countEat ?: 0
            val profile = call.sessions.get<ProfileRegistration>()
            val params = mapOf("count" to count, "auth" to false)
            if (profile == null)
                call.respond(FreeMarkerContent("profile_page.ftl", params, "e"))
            else
                call.respondRedirect("/profile/${profile.FIO}")
        }

        get("basket") {
            val count = call.sessions.get<MySession>() ?: MySession(0)
            val indexEats = call.sessions.get<FoodCount>() ?: FoodCount(mutableListOf(), mutableListOf())

            val listEats = mutableListOf<Food>()

            indexEats.index.forEachIndexed { index, item ->
                val idFoodSort = listFoodSort.first { foodSort -> foodSort.id == item }
                idFoodSort.num = indexEats.num[index]
                println(indexEats.num[index])
                listEats.add(idFoodSort)
            }

            val params = mapOf("eats" to listEats, "count" to count.countEat)
            call.respond(FreeMarkerContent("basket_page.ftl", params, "e"))
        }

        post("basket-ajax") {
            val count = call.sessions.get<MySession>() ?: MySession(0)
            val indexEats = call.sessions.get<FoodCount>() ?: FoodCount(mutableListOf(), mutableListOf())

            val listEats = mutableListOf<Food>()

            indexEats.index.forEachIndexed { index, item ->
                val idFoodSort = listFoodSort.first { foodSort -> foodSort.id == item }
                idFoodSort.num = indexEats.num[index]
                println(indexEats.num[index])
                listEats.add(idFoodSort)
            }

            val params = mapOf("eats" to listEats, "count" to count.countEat)
            call.respond(FreeMarkerContent("basket.ftl", params, "e"))
        }

        post("profile-ajax") {
            val session = call.sessions.get<MySession>()
            val count = session?.countEat ?: 0
            val profile = call.sessions.get<ProfileRegistration>()
            val params = mapOf("count" to count, "auth" to false)
            if (profile == null)
                call.respond(FreeMarkerContent("profile.ftl", params, "e"))
            else
                call.respondRedirect("/profile/${profile.FIO}")
        }

        get("global") {
            val sessionCountEat = call.sessions.get<MySession>()
            val count = sessionCountEat?.countEat ?: 0
            val params = mapOf("count" to count)
            call.respond(FreeMarkerContent("global.ftl", params, ""))
        }

    }

    route("/handler") {
        post("/add-count-food") {
            val param = call.receiveParameters()
            val countEat = param["countEat"] ?: return@post call.respond(HttpStatusCode.BadRequest)
            val index = param["Index"] ?: return@post call.respond(HttpStatusCode.BadRequest)

            val sessionEatsIndex = call.sessions.get<FoodCount>() ?: FoodCount(mutableListOf(), mutableListOf())

            var check = false
            sessionEatsIndex.index.forEachIndexed { indexList, item ->
                if (item == index.toInt()) {
                    sessionEatsIndex.num[indexList] += 1
                    check = true
                }
            }
            if (!check) {
                sessionEatsIndex.index.add(index.toInt())
                sessionEatsIndex.num.add(1)
            }

            println(sessionEatsIndex)

            call.sessions.set(sessionEatsIndex)
            call.sessions.set(MySession(countEat.toInt()))
        }

        post("/remove-count-food") {
            val param = call.receiveParameters()
            val countEat = param["countEat"] ?: return@post call.respond(HttpStatusCode.BadRequest)
            val index = param["Index"] ?: return@post call.respond(HttpStatusCode.BadRequest)

            val sessionEatsIndex = call.sessions.get<FoodCount>() ?: FoodCount(mutableListOf(), mutableListOf())

            var check = false
            sessionEatsIndex.index.forEachIndexed { indexList, item ->
                if (item == index.toInt()) {
                    sessionEatsIndex.num[indexList] -= 1
                    if (sessionEatsIndex.num[indexList] == 1) {
                        sessionEatsIndex.num.removeAt(indexList)
                        sessionEatsIndex.index.removeAt(indexList)
                    }

                }
            }

            println(sessionEatsIndex)

            call.sessions.set(sessionEatsIndex)
            call.sessions.set(MySession(countEat.toInt()))
        }
    }
}

fun Application.HomepageRouting() {
    routing { getHomepage() }
}


fun test() {
    val base64Encoder = Base64.getEncoder()
}



