package com.example.database

import com.example.database.Foods.autoIncrement
import com.example.database.Foods.references
import org.jetbrains.exposed.sql.Column
import org.jetbrains.exposed.sql.Table

data class Order(val idOrder: Int? = null, val idFood: Int, val orderCategory: String, val address: Int, val sum: Double)

object Orders : Table() {
    val idOrder: Column<Int> = integer("idOrder").autoIncrement()
    val idFood: Column<Int> = integer("idFood").references(Foods.idFood)
    val orderCategory: Column<Int> = integer("orderCategory")
    val adress: Column<Int> = integer("address").references(Addresses.idAddress)
    val sum: Column<Double> = double("sum")

    override val primaryKey = PrimaryKey(idFood)
}
