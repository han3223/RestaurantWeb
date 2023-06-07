package com.example.bonappetitandroid.dto

import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json

@Serializable
data class Order(val idOrder: Int, val orderCategory: String, val listFood: String, val user: Int? = null, val price: Int, val date: String)

@Serializable
data class OrderSet(val orderCategory: String, val listFood: String, val user: Int?, val price: Int, val date: String)
