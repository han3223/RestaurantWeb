package com.example.database.dataclass

import org.jetbrains.exposed.sql.Column
import org.jetbrains.exposed.sql.Table
import org.jetbrains.exposed.sql.javatime.date
import java.time.LocalDate

data class Order(val idOrder: Int? = null,
                 val orderCategory: String,
                 val foodName: String,
                 val address: Int,
                 val dateOrder: LocalDate,
                 val sum: Double)

object Orders : Table() {
    val idOrder: Column<Int> = integer("idOrder").autoIncrement()
    val orderCategory: Column<String> = varchar("orderCategory", 20)
    val foodName: Column<String> = text("foodName")
    val address: Column<Int> = integer("address").references(Addresses.idAddress)
    val dateOrder: Column<LocalDate> = date("dateOrder")
    val sum: Column<Double> = double("sum")

    override val primaryKey = PrimaryKey(idOrder)
}
