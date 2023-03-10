package com.example.database.dataclass

import org.jetbrains.exposed.sql.Column
import org.jetbrains.exposed.sql.Table
import java.util.Base64

data class Food(val idFood: Int? = null,
                val foodName: String,
                val description: String,
                val price: Double,
                val idCategory: Int,
                val foodImage: String)

object Foods : Table() {
    val idFood: Column<Int> = integer("idFood").autoIncrement()
    val foodName: Column<String> = varchar("foodName", 30)
    val description: Column<String> = text("foodDescription")
    val price: Column<Double> = double("price")
    val idCategory: Column<Int> = integer("idCategory").references(Categories.idCategory)
    val foodImage: Column<String> = text("foodImage")

    override val primaryKey = PrimaryKey(idFood)
}
