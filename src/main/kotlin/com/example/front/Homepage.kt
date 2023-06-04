package com.example.front

import com.example.Eats
import com.example.EatsCount
import com.example.MySession
import com.example.bonappetitandroid.*
import com.example.bonappetitandroid.repository.client.SupabaseProfileClient
import com.example.dto.Category
import com.example.dto.CategoryDTO
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
import org.json.JSONObject
import java.util.*


fun Route.getHomepage() {
    val listFoodSort = mutableListOf<Food>()

    get("/") {
        call.respondRedirect("bonappetit")
    }
    route("bonappetit") {
        get {
            try {
                val session = call.sessions.get<MySession>()
                val count = session?.countEat ?: 0

                val categories = SupabaseFoodClient.INSTANCE.getAllCategories()
                val realCategory = mutableListOf<Category>()

                val allFood = SupabaseFoodClient.INSTANCE.getAllFood()

                categories.forEach { category ->
                    val realSubcategory = mutableListOf<Subcategory>()
                    SupabaseFoodClient.INSTANCE.getAllCategoryToSubcategory(category.id).map { item ->
                        val subcategory = SupabaseFoodClient.INSTANCE.getSubcategory(item.subcategory)
                        val food =
                            allFood.filter { it.category == category.id && (it.subcategory == subcategory.id || it.subcategory == null) }
                        realSubcategory.add(Subcategory(subcategory.subcategory, subcategory.route, food))
                    }
                    realCategory.add(Category(category.category, category.route, realSubcategory))
                }

                val listNumEat = mutableListOf<Int>()
                if (call.sessions.get<EatsCount>() == null) {
                    realCategory.forEach { category->
                        category.subcategory.forEach { subcategory ->
                            subcategory.eat.forEach { food ->
                                listFoodSort.add(food)
                                listNumEat.add(food.num)
                            }
                        }
                    }
                    call.sessions.set(EatsCount(listNumEat))
                }

                val countList = call.sessions.get<EatsCount>()?.num
                val params = mapOf("categories" to realCategory, "count" to count, "countsEat" to countList)
                call.respond(FreeMarkerContent("homepageTest.ftl", params, "e"))
            }
            catch (e: Exception) {
                e.printStackTrace()
            }
        }

        get("profile") {
            val session = call.sessions.get<MySession>()
            val count = session?.countEat ?: 0
            val params = mapOf("count" to count)
            call.respond(FreeMarkerContent("profile_page.ftl", params, "e"))
        }

        get("basket") {
            val countEats = call.sessions.get<MySession>()?: 0
            val indexEats = call.sessions.get<Eats>()
            val listEats = mutableListOf<Food>()
            indexEats?.index?.forEach { index->
                listEats.add(listFoodSort[index])
            }

            val params = mapOf("eats" to listEats, "count" to countEats)
            call.respond(FreeMarkerContent("basket_page.ftl", params, "e"))
        }

        post("basket-ajax") {
            val param = call.receiveParameters()
            val countEat = param["countEat"] ?: return@post call.respond(HttpStatusCode.BadRequest)

            val session = call.sessions.get<Eats>()

//            val params = mapOf("eats" to basketList, "count" to count, "countsEat" to countEats)
//            call.respond(FreeMarkerContent("basket.ftl", params, "e"))
        }

        post("profile-ajax") {
            val sessionCountEat = call.sessions.get<MySession>()
            val count = sessionCountEat?.countEat ?: 0
            val params = mapOf("count" to count)
            call.respond(FreeMarkerContent("profile.ftl", params, "e"))
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

            val sessionEatsIndex = call.sessions.get<Eats>()
            var listEatsIndex = mutableListOf<Int>()
            if (sessionEatsIndex != null)
                listEatsIndex = sessionEatsIndex.index

            val find = sessionEatsIndex?.index?.find { item-> item == index.toInt() }
            if (find == null)
                listEatsIndex.add(index.toInt())
            call.sessions.set(Eats(listEatsIndex))

            val listNumEatSession = call.sessions.get<EatsCount>()
            listNumEatSession?.num?.set(index.toInt(), listNumEatSession.num[index.toInt()] + 1)
            call.sessions.set(EatsCount(listNumEatSession?.num ?: mutableListOf()))

            call.sessions.set(MySession(countEat.toInt()))
        }

        post("/remove-count-food") {

        }
    }
}

fun Application.HomepageRouting() {
    routing { getHomepage() }
}


fun test() {
    val base64Encoder = Base64.getEncoder()
}



