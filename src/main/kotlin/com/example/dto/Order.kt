package com.example.dto

import kotlinx.serialization.Serializable

@Serializable
data class Order(val id: Int, val orderCategory: String, val foodName: String, val address: Int, val dateOrder: String, val sum: Double)
