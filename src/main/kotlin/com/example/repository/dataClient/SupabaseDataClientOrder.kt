package com.example.repository.dataClient

import com.example.dto.Order

interface SupabaseDataClientOrder {
    suspend fun getOrderData(): List<Order>
    suspend fun addOrderData()
}