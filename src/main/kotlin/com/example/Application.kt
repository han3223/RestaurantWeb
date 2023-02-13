package com.example

import io.ktor.server.application.*
import io.ktor.server.engine.*
import io.ktor.server.netty.*
import com.example.plugins.*


fun Application.myapp() {
    configureSerialization()
    configureTemplating()
    configureDatabases()
    configureRouting()
}

fun main() {
    embeddedServer(
        Netty,
        watchPaths = listOf("Restaurant"),
        module = Application::myapp,
        host = "localhost",
        port = 8080,
    ).start(wait = true)
}