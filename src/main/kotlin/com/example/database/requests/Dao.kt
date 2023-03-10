package com.example.database.requests

import org.jdbi.v3.core.Handle
import org.jdbi.v3.core.Jdbi

class Dao {
    val jdbi: Jdbi = Jdbi.create("jdbc:postgresql://172.20.8.18:5432/kp0091_05_restaurant", "st0091", "qwerty91")
    val handle: Handle = jdbi.open()

    fun select(vararg args: String, table: String) {
        var select = handle.createQuery("select $args from $table")
            .mapToMap()
            .list()
    }

}