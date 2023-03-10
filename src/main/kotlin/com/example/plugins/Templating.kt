package com.example.plugins

import io.ktor.server.html.*
import kotlinx.html.*
import kotlinx.css.*
import io.ktor.http.*
import io.ktor.server.response.*
import freemarker.cache.*
import io.ktor.server.freemarker.*
import io.ktor.server.application.*
import io.ktor.server.routing.*

fun Application.configureTemplating() {


    install(FreeMarker) {
        templateLoader = ClassTemplateLoader(this::class.java.classLoader, "templates")
    }
    routing {
        get("/html-freemarker") {
            call.respond(FreeMarkerContent("index.ftl", mapOf("data" to IndexData(listOf(1, 2, 3))), ""))
        }
    }
}

suspend inline fun ApplicationCall.respondCss(builder: CSSBuilder.() -> Unit) {
    this.respondText(CSSBuilder().apply(builder).toString(), ContentType.Text.CSS)
}

data class IndexData(val items: List<Int>)
