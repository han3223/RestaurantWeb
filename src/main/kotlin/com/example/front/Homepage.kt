package com.example.front

import com.example.database.requests.Dao
import com.example.plugins.IndexData
import io.ktor.server.application.*
import io.ktor.server.freemarker.*
import io.ktor.server.response.*
import io.ktor.server.routing.*




fun Route.getHomepage() {
    val dao: Dao = Dao()

    get("") {
        call.respond(FreeMarkerContent("homepage.ftl", ApplicationStarted))
    }
    post("") {  }
}

fun Application.HomepageRouting() {
    routing { getHomepage() }
}


