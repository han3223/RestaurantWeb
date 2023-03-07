package com.example.database

import com.example.database.dataclass.*
import kotlinx.coroutines.Dispatchers
import org.jetbrains.exposed.sql.Database
import org.jetbrains.exposed.sql.SchemaUtils
import org.jetbrains.exposed.sql.transactions.experimental.newSuspendedTransaction
import org.jetbrains.exposed.sql.transactions.transaction

object DataBaseFactory {
    val database = Database.connect(
        url = "", driver = "",
        user = "", password = ""
    )
    fun init() {
        transaction {
            SchemaUtils.create(Addresses)
            SchemaUtils.create(Categories)
            SchemaUtils.create(Foods)
            SchemaUtils.create(Orders)
            SchemaUtils.create(OrderHistories)
            SchemaUtils.create(Profiles)
        }
    }
}