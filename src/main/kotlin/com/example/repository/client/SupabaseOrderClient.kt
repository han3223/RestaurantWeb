package com.example.bonappetitandroid.repository.client

import com.example.bonappetitandroid.dto.Order
import com.example.bonappetitandroid.dto.OrderSet
import io.github.jan.supabase.createSupabaseClient
import io.github.jan.supabase.postgrest.Postgrest
import io.github.jan.supabase.postgrest.postgrest

class SupabaseOrderClient {
    private val supabaseUrl = "https://qyqqzftymegxiemintrs.supabase.co/"
    private val supabaseKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF5cXF6ZnR5bWVneGllbWludHJzIiwicm9sZSI6ImFub24iLCJpYXQiOjE2Nzk4MzYyNzgsImV4cCI6MTk5NTQxMjI3OH0.7JPVILpQDuevPVj1HK-uihNh9u322o_Ow-J289mocvM"
    val client = createSupabaseClient(
        supabaseUrl,supabaseKey
    ) {
        install(Postgrest)
    }
    companion object {
        val INSTANCE = SupabaseOrderClient()
    }

    suspend fun setOrder(order: OrderSet) {
        client.postgrest["order"].insert(order)
    }

    suspend fun getOrderByProfile(idProfile: Int): List<Order> {
        return client.postgrest["order"].select { eq("user", idProfile) }.decodeList()
    }
}