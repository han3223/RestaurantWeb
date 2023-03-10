package com.example.database

import com.example.database.dataclass.*
import kotlinx.coroutines.Dispatchers
import org.jdbi.v3.core.Handle
import org.jdbi.v3.core.Jdbi
import org.jdbi.v3.postgres.PostgresPlugin
import org.jetbrains.exposed.sql.Database
import org.jetbrains.exposed.sql.SchemaUtils
import org.jetbrains.exposed.sql.transactions.experimental.newSuspendedTransaction
import org.jetbrains.exposed.sql.transactions.transaction

object DataBaseFactory {

    val database = Database.connect(
         url = "jdbc:postgresql://172.20.8.18:5432/kp0091_05_restaurant", driver = "org.postgresql.Driver",
        user =  "st0091", password =  "qwerty91"
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
