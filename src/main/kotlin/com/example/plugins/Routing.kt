package com.example.plugins

import com.example.front.HomepageRouting
import io.ktor.server.routing.*
import io.ktor.server.response.*
import io.ktor.server.application.*
import io.ktor.server.http.content.*

fun Application.configureRouting() {
    routing {
        static("/static") {
            resources("static")
        }
    }
    HomepageRouting()
}
