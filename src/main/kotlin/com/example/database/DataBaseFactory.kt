package com.example.database

import com.example.database.dataclass.*
import org.jetbrains.exposed.sql.Database
import org.jetbrains.exposed.sql.SchemaUtils
import org.jetbrains.exposed.sql.transactions.transaction

//object DataBaseFactory {
//    val database = Database.connect(
//                 url = "jdbc:postgresql://172.20.8.18:5432/kp0091_05_restaurant", driver = "org.postgresql.Driver",
//        user =  "st0091", password =  "qwerty91"
//    )
//
//    fun init() {
//        transaction {
//            SchemaUtils.create(Addresses)
//            SchemaUtils.create(Orders)
//            SchemaUtils.create(OrderHistories)
//            SchemaUtils.create(Profiles)
//            SchemaUtils.create(Subcategories)
//        }
//    }
//}
