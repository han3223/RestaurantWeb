package com.example.repository.dataClient

import com.example.dto.Profile

interface SupabaseDataClientProfile {
    suspend fun getProfileData(): List<Profile>
    suspend fun getEmail(): List<Profile>
    suspend fun getPassword(): List<Profile>
    suspend fun addProfileData()
}