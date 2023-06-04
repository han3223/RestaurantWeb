package com.example

import com.example.bonappetitandroid.*
import com.example.plugins.configureRouting
import com.example.plugins.configureTemplating
import io.ktor.server.application.*
import io.ktor.server.engine.*
import io.ktor.server.netty.*
import io.ktor.server.sessions.*
import kotlinx.serialization.Serializable

data class MySession(val countEat: Int = 0)
data class Eats(val index: MutableList<Int>)
@Serializable
data class EatsCount(val num: MutableList<Int>)

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
        cookie<EatsCount>("EATS_COUNT") {
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