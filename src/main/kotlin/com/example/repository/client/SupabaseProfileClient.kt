package com.example.repository.client

import com.example.dto.Profile
import com.example.repository.dataClient.SupabaseDataClientProfile
import io.github.jan.supabase.annotiations.SupabaseExperimental
import io.github.jan.supabase.createSupabaseClient
import io.github.jan.supabase.plugins.standaloneSupabaseModule
import io.github.jan.supabase.postgrest.Postgrest
import io.github.jan.supabase.postgrest.postgrest


class SupabaseProfileClient : SupabaseDataClientProfile {
    private val supabaseUrl = "https://qyqqzftymegxiemintrs.supabase.co/"
    private val supabaseKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF5cXF6ZnR5bWVneGllbWludHJzIiwicm9sZSI6ImFub24iLCJpYXQiOjE2Nzk4MzYyNzgsImV4cCI6MTk5NTQxMjI3OH0.7JPVILpQDuevPVj1HK-uihNh9u322o_Ow-J289mocvM"
    val client = createSupabaseClient(
        supabaseUrl, supabaseKey
    ) {
        install(Postgrest)
    }
//
    private val mypostgr = standaloneSupabaseModule(Postgrest, url = supabaseUrl, apiKey = supabaseKey)


    @OptIn(SupabaseExperimental::class)
    override suspend fun getProfileData() : List<Profile> {
        println(client.postgrest["profile"].select().count())
        var result: List<Profile> = emptyList()
        try {
            result = client.postgrest["profile"].select().decodeList()
        }
        catch (e: Exception) {
            e.printStackTrace()
        }

        return result
    }

    override suspend fun getEmail() : List<Profile> {
        val result = client.postgrest["public", "profile"].select("email").decodeList<Profile>()
        return result
    }

    override suspend fun getPassword(): List<Profile> {
        val result = client.postgrest["public", "profile"].select("password").decodeList<Profile>()
        return result
    }

    override suspend fun addProfileData() {
        val insert = client.postgrest["public", "profile"].insert(Profile)
    }
}