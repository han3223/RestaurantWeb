package com.example.bonappetitandroid.repository.dataClient

import com.example.bonappetitandroid.dto.OrderGet

interface SupabaseDataClientOrder {
    suspend fun getOrderData(): List<OrderGet>
    suspend fun addOrderData()
}