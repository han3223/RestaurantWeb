package com.example.database.dataclass

import com.example.database.dataclass.Profiles.autoIncrement
import org.jetbrains.exposed.sql.Column
import org.jetbrains.exposed.sql.Table

data class OrderHistory(val idProfile: Int? = null, val orderNumber: String)

object OrderHistories: Table() {
    val idProfile: Column<Int> = integer("idProfile").autoIncrement().references(Profiles.idProfile)
    val orderNumber: Column<String> = varchar("orderNumber", 70)

    override val primaryKey = PrimaryKey(idProfile)
}
