package com.example.front

import com.example.Eats
import com.example.MySession
import com.example.bonappetitandroid.Category
import com.example.bonappetitandroid.Eat
import com.example.bonappetitandroid.ListCategory
import com.example.database.requests.Dao
import io.ktor.http.*
import io.ktor.server.application.*
import io.ktor.server.freemarker.*
import io.ktor.server.request.*
import io.ktor.server.response.*
import io.ktor.server.routing.*
import io.ktor.server.sessions.*
import kotlinx.serialization.decodeFromString
import kotlinx.serialization.encodeToString
import kotlinx.serialization.json.Json
import org.json.JSONObject
import java.util.*


fun Route.getHomepage() {
    val dao: Dao = Dao()
    val eats = Eat.Food().eats
    val onlyFood = Eat.Food().onlyFood

    get("/") {
        call.respondRedirect("bonappetit")

    }
    route("bonappetit") {
        get {
            val session = call.sessions.get<MySession>()
            val count = session?.countEat ?: 0
            if (count == 0) {
                val listJson = Json.encodeToString(eats)
                call.sessions.set("EAT" ,listJson)
            }
            val listJson = call.sessions.get<String>()
            val list = listJson?.let { Json.decodeFromString<List<Category>>(it) } ?: emptyList()
            println("\n\n\n\n\n\n\n\n\n\n\n\n\n $list")
//            val sessionListCategory = call.sessions.get<ListCategory>()
//
//            println("${sessionListCategory?.list} \n\n\n\n\n\n\n\n\n\n\n\n\n\n")
            val params = mapOf("categories" to eats, "count" to count)
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
                basketList[basketList.lastIndex].price = basketList[basketList.lastIndex].price!! * listCountEats[i]
                basketList[basketList.lastIndex].num = listCountEats[i]
            }
            val sessionCountEat = call.sessions.get<MySession>()
            val count = sessionCountEat?.countEat ?: 0
            val params = mapOf("eats" to basketList, "count" to count)
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
                    basketList[basketList.lastIndex].price!! * listCountEats[i]
                basketList[basketList.lastIndex].num = listCountEats[i]
            }
            val sessionCountEat = call.sessions.get<MySession>()
            val count = sessionCountEat?.countEat ?: 0
            val params = mapOf("eats" to basketList, "count" to count)
            call.respond(FreeMarkerContent("basket.ftl", params, "e"))
        }
        get("profile-ajax") {
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
    get("/test") {
        call.respond(FreeMarkerContent("test.ftl", ApplicationStarted))
    }
    post("/test") {
        val params = call.receiveParameters()
        val image = params["image"] ?: return@post call.respond(HttpStatusCode.BadRequest)
        val encodedString: String = Base64.getEncoder().encodeToString(image.toByteArray())
        println(encodedString)
        call.respond(FreeMarkerContent("test.ftl", ApplicationStarted))
    }

    post("/add-count-food") {
        val param = call.receiveParameters()
        val countEat = param["countEat"] ?: return@post call.respond(HttpStatusCode.BadRequest)
        val listEats = param["listEat"] ?: return@post call.respond(HttpStatusCode.BadRequest)
        call.sessions.set(MySession(countEat.toInt()))

        val jsonObject = JSONObject(listEats)
        val listIndexEat = mutableListOf<Int>()
        val listCountEat = mutableListOf<Int>()

        val keys = jsonObject.keys()
        while (keys.hasNext()) {
            val key = keys.next()
            val value = jsonObject.get(key)
            listIndexEat.add(key.toInt())
            listCountEat.add(value as Int)
            val eatElement: Eat = onlyFood[key.toInt()]
            for (i in eats.indices) {
                for (j in eats[i].subcategory.indices) {
                    val index = eats[i].subcategory[j].eat.indexOf(eatElement)
                    if (index != -1) {
                        val listJson = call.sessions.get<String>()
                        val list = listJson?.let { Json.decodeFromString<List<Category>>(it) } ?: emptyList()
                        println("\n\n\n\n\n\n\n\n\n\n\n\n\n $list")
//                        println(sessionListCategory?.list)
//                        if (sessionListCategory != null) {
//                            sessionListCategory.list[i].subcategory[j].eat[index].num = value.toInt()
//                            println(sessionListCategory.list[i].subcategory[j].eat[index].num)
//                        } else
//                            println("Элемента не существет!!!")
                        break
                    }
                }
            }
        }
        call.sessions.set(Eats(listIndexEat, listCountEat))
        call.sessions.set(MySession(countEat.toInt()))
//        call.sessions.set(MySession(0))
//        TODO(Записываются значения только последнии, исправить баг. Также данные о количестве еды обновляются после нажатия)
    }
}

fun Application.HomepageRouting() {
    routing { getHomepage() }
}


fun test() {
    val base64Encoder = Base64.getEncoder()
}



