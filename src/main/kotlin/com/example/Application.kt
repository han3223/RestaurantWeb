package com.example

import com.example.bonappetitandroid.Category
import com.example.bonappetitandroid.Eat
import com.example.bonappetitandroid.ListCategory
import com.example.database.DataBaseFactory
import io.ktor.server.application.*
import io.ktor.server.engine.*
import io.ktor.server.netty.*
import com.example.plugins.*
import io.ktor.server.sessions.*
import kotlinx.serialization.Serializable

data class MySession(val countEat: Int = 0)
data class Eats(val index: List<Int>, val count: List<Int>)

fun Application.myapp() {
    configureTemplating()
    configureRouting()
    //DataBaseFactory.init()

    install(Sessions) {
        cookie<MySession>("COUNT_PRODUCT") {
            cookie.path = "/"
            cookie.extensions["SameSite"] = "lax"
            cookie.maxAgeInSeconds = 60
        }
        cookie<Eats>("EAT_LIST") {
            cookie.path = "/"
            cookie.extensions["SameSite"] = "lax"
            cookie.maxAgeInSeconds = 60
        }
        cookie<String>("EAT") {
            cookie.path = "/"
            cookie.extensions["SameSite"] = "lax"
            cookie.maxAgeInSeconds = 60
        }
    }
}

fun main() {
    embeddedServer(
        Netty,
        watchPaths = listOf("Restaurant"),
        module = Application::myapp,
        host = "0.0.0.0",
        port = 8080,
    ).start(wait = true)
}