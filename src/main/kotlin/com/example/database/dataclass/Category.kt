package com.example.database.dataclass

import org.jetbrains.exposed.sql.Column
import org.jetbrains.exposed.sql.Table

data class Category(val idCategory: Int? = null, val categoryName: String, val subCategory: String)

object Categories : Table() {
    val idCategory: Column<Int> = integer("idCategory").autoIncrement()
    val categoryName: Column<String> = varchar("categoryName", 15)
    val subCategory: Column<String> = varchar("subCategory", 25)

    override val primaryKey = PrimaryKey(idCategory)
}
