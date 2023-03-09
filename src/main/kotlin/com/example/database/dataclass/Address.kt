package com.example.database.dataclass

import org.jetbrains.exposed.sql.Column
import org.jetbrains.exposed.sql.Table

data class Address(val idAddress: Int? = null, val address: String)

object Addresses : Table() {
    val idAddress: Column<Int> = integer("idAddress").autoIncrement()
    val address: Column<String> = text("address")

    override val primaryKey = PrimaryKey(idAddress)
}
