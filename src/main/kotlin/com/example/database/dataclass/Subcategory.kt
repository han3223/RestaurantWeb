package com.example.database.dataclass

import org.jetbrains.exposed.sql.Column
import org.jetbrains.exposed.sql.Table

data class Subcategory(val idSubcategory: Int? = null, val subcategory: String)

object Subcategories: Table() {
    val idSubcategory: Column<Int> = integer("idCategory").autoIncrement()
    val subcategoryName: Column<String> = varchar("categoryName", 25)

    override val primaryKey = PrimaryKey(idSubcategory)
}