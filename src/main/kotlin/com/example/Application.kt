package com.example

import com.example.database.DataBaseFactory
import io.ktor.server.application.*
import io.ktor.server.engine.*
import io.ktor.server.netty.*
import com.example.plugins.*


fun Application.myapp() {
    configureTemplating()
    configureRouting()
    DataBaseFactory.init()
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