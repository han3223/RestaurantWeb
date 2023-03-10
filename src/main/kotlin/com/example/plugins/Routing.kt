package com.example.plugins

import com.example.front.HomepageRouting
import io.ktor.server.routing.*
import io.ktor.server.response.*
import io.ktor.server.application.*

fun Application.configureRouting() {
    HomepageRouting()
}
