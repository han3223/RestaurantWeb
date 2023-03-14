package com.example.database.dataclass

import org.jetbrains.exposed.sql.Column
import org.jetbrains.exposed.sql.Table

data class Profile(val idProfile: Int? = null,
                   val FIO: String,
                   val telephoneNumber: String,
                   val email: String,
                   val password: String,
                   val role: String,
                   val address: Int)

object Profiles: Table() {
    val idProfile: Column<Int> = integer("idProfile").autoIncrement()
    val FIO: Column<String> = text("FIO")
    val telephoneNumber: Column<String> = varchar("telephoneNumber", 12)
    val email: Column<String> = text("e-mail")
    val password: Column<String> = text("password")
    val role: Column<String> = varchar("role", 20)
    val address: Column<Int> = integer("address").references(Addresses.idAddress)

    override val primaryKey = PrimaryKey(idProfile)
}
