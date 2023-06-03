package com.example.front

import com.example.Eats
import com.example.EatsCount
import com.example.MySession
import com.example.bonappetitandroid.*
import com.example.bonappetitandroid.repository.client.SupabaseProfileClient
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

    val eats = listOf(
        Category(ColdSnacks().line.title, "cold_snacks", ColdSnacks().subcategory),
        Category(Salads().Line.title, "salads", Salads().subcategory),
        Category(HotSnacks().Line.title, "hot_snacks", HotSnacks().subcategory),
        Category(First().Line.title, "first_courses", First().subcategory),
        Category(Second().Line.title, "second_courses", Second().subcategory),
        Category(Garnish().Line.title, "side_dishes", listOf(Subcategories("", "", Garnish().item))),
        Category(Desserts().Line.title, "desserts", listOf(Subcategories("", "", Desserts().item))),
        Category(Drinks().Line.title, "drinks", Drinks().subcategory)
    )

    val onlyFood = listOf(
        ColdSnacks.Fish().item,
        ColdSnacks.Meat().item,
        ColdSnacks.Vegetables().item,
        Salads.Fish().item,
        Salads.Meat().item,
        Salads.Vegetables().item,
        HotSnacks.Fish().item,
        HotSnacks.Meat().item,
        First.Broth().item,
        First.Filling().item,
        First.Puree().item,
        Second.Fish().item,
        Second.Meat().item,
        Second.Vegetables().item,
        Garnish().item,
        Desserts().item,
        Drinks.Cold().item,
        Drinks.Hot().item,
        Drinks.Alcohol().item
    ).flatten()

    get("/") {
        call.respondRedirect("bonappetit")

    }
    route("bonappetit") {
        get {
            val session = call.sessions.get<MySession>()
            val count = session?.countEat ?: 0

            println("${SupabaseProfileClient().getProfileData()}")

            if (count == 0) {
                val countEatList = mutableListOf<Int>()
                onlyFood.forEach { item ->
                    countEatList.add(item.num)
                }
                call.sessions.set(EatsCount(countEatList))
            }

            val countList = call.sessions.get<EatsCount>()?.num
            val params = mapOf("categories" to eats, "count" to count, "countsEat" to countList)

            call.respond(FreeMarkerContent("homepageTest.ftl", params, "e"))
        }

        get("profile") {
            val session = call.sessions.get<MySession>()
            val count = session?.countEat ?: 0
            val params = mapOf("categories" to eats, "count" to count)
            call.respond(FreeMarkerContent("profile_page.ftl", params, "e"))
        }

        get("basket") {
            val session = call.sessions.get<Eats>()
            val listIndexEats = session?.index ?: mutableListOf<Int>()
            val listCountEats = session?.count ?: mutableListOf<Int>()
            val basketList = mutableListOf<Eat>()
            for (i in listIndexEats.indices) {
                basketList.add(onlyFood[listIndexEats[i]])
                basketList[basketList.lastIndex].price = basketList[basketList.lastIndex].price * listCountEats[i]
            }
            val sessionCountEat = call.sessions.get<MySession>()
            val count = sessionCountEat?.countEat ?: 0
            val countEat = mutableListOf<Int>()
            val countList = call.sessions.get<EatsCount>()?.num
            countList?.forEach { item ->
                if (item != 0)
                    countEat.add(item)
            }
            val params = mapOf("eats" to basketList, "count" to count, "countsEat" to countEat)
            call.respond(FreeMarkerContent("basket_page.ftl", params, "e"))
        }

        post("basket-ajax") {
            val param = call.receiveParameters()
            val countEat = param["countEat"] ?: return@post call.respond(HttpStatusCode.BadRequest)

            val session = call.sessions.get<Eats>()
            val listIndexEats = session?.index ?: mutableListOf<Int>()
            val listCountEats = session?.count ?: mutableListOf<Int>()
            var basketList = mutableListOf<Eat>()
            for (i in listIndexEats.indices) {
                basketList.add(onlyFood[listIndexEats[i]])
                basketList[basketList.lastIndex].price =
                    basketList[basketList.lastIndex].price * listCountEats[i]
            }

            val sessionCountEat = call.sessions.get<MySession>()
            val count = sessionCountEat?.countEat ?: 0
            val countEats = mutableListOf<Int>()
            val countList = call.sessions.get<EatsCount>()?.num
            countList?.forEach { item ->
                if (item != 0)
                    countEats.add(item)
            }
            val params = mapOf("eats" to basketList, "count" to count, "countsEat" to countEats)
            call.respond(FreeMarkerContent("basket.ftl", params, "e"))
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
            val params = mapOf("categories" to eats, "count" to count)
            call.respond(FreeMarkerContent("global.ftl", params, ""))
        }

    }

    route("/handler") {
        post("/add-count-food") {
            println("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nHello")
            val param = call.receiveParameters()
            val countEat = param["countEat"] ?: return@post call.respond(HttpStatusCode.BadRequest)
            val listEats = param["listEat"] ?: return@post call.respond(HttpStatusCode.BadRequest)
            val index = param["Index"] ?: return@post call.respond(HttpStatusCode.BadRequest)
            call.sessions.set(MySession(countEat.toInt()))

            val jsonObject = JSONObject(listEats)
            val foodCheck = call.sessions.get<Eats>()
            val listIndexEat = foodCheck?.index ?: mutableListOf<Int>()
            val listCountEat = foodCheck?.count ?: mutableListOf<Int>()

            val keys = jsonObject.keys()
            while (keys.hasNext()) {
                val key = keys.next()
                val value = jsonObject.get(key)
                if (listIndexEat.indexOf(key.toInt()) != -1)
                    listCountEat[listIndexEat.indexOf(key.toInt())] += 1
                else {
                    listIndexEat.add(key.toInt())
                    listCountEat.add(value as Int)
                }
            }

            val countList = call.sessions.get<EatsCount>()?.num ?: mutableListOf()
            if (countList.isNotEmpty()) {
                countList[index.toInt()] += 1
                call.sessions.set(EatsCount(countList))
            }
            call.sessions.set(Eats(listIndexEat, listCountEat))
            call.sessions.set(MySession(countEat.toInt()))
        }

        post("/remove-count-food") {
            val param = call.receiveParameters()
            println("\n\n\n\n\n\n\n\n\n\n\n\n\nHello")
            val countEat = param["countEat"] ?: return@post call.respond(HttpStatusCode.BadRequest)
            val indexEat = param["Index"] ?: return@post call.respond(HttpStatusCode.BadRequest)

            val session = call.sessions.get<Eats>()
            val listIndexEats = session?.index ?: mutableListOf<Int>()
            val listCountEats = session?.count ?: mutableListOf<Int>()

            println("$listIndexEats\n\n\n\n\n\n\n\n\n\n\n\n\nHello")

            call.sessions.set(MySession(countEat.toInt()))
            val countEats = call.sessions.get<EatsCount>()
            if (countEats != null) {
                countEats.num[indexEat.toInt()] -= 1
                if(countEats.num[indexEat.toInt()] == 0) {
                    listIndexEats.remove(indexEat.toInt())
                    listCountEats.remove(indexEat.toInt())
                }
            }

            println("$listIndexEats\n\n\n\n\n\n\n\n\n\n\n\n\n")
            call.sessions.set(Eats(listIndexEats, listCountEats))
            call.sessions.set(countEats)

        }
    }
}

fun Application.HomepageRouting() {
    routing { getHomepage() }
}


fun test() {
    val base64Encoder = Base64.getEncoder()
}



