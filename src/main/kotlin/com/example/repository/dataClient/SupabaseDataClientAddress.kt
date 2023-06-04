package com.example.repository.dataClient

import com.example.dto.Address

interface SupabaseDataClientAddress {
    suspend fun getAddress() : List<Address>
}