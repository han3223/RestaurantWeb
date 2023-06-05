package com.example

import com.example.bonappetitandroid.*
import com.example.bonappetitandroid.dto.Profile
import com.example.bonappetitandroid.dto.ProfileRegistration
import com.example.plugins.configureRouting
import com.example.plugins.configureTemplating
import io.ktor.server.application.*
import io.ktor.server.engine.*
import io.ktor.server.netty.*
import io.ktor.server.sessions.*
import kotlinx.serialization.Serializable

data class MySession(val countEat: Int = 0)

@Serializable
data class FoodCount(val index: MutableList<Int>, var num: MutableList<Int>)
//data class Eats(val index: MutableList<Int>, var num: MutableList<Int>)
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
            cookie.maxAgeInSeconds = 180
        }
        cookie<FoodCount>("EAT_LIST") {
            cookie.path = "/"
            cookie.extensions["SameSite"] = "lax"
            cookie.maxAgeInSeconds = 180
        }
        cookie<EatsCount>("EATS_COUNT") {
            cookie.path = "/"
            cookie.extensions["SameSite"] = "lax"
            cookie.maxAgeInSeconds = 180
        }
        cookie<ProfileRegistration>("PROFILE") {
            cookie.path = "/"
            cookie.extensions["SameSite"] = "lax"
            cookie.maxAgeInSeconds = 180
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