package com.example.dto

import kotlinx.serialization.Serializable

@Serializable
data class OrderHistory(val idOrderHistory: Int, val orderNumber: String, val order: Int) {
}
