package com.example.bonappetitandroid.repository.client

import com.example.bonappetitandroid.dto.Profile
import com.example.bonappetitandroid.dto.ProfileRegistration
import com.example.bonappetitandroid.repository.dataClient.SupabaseDataClientProfile
import com.example.repository.client.SupabaseFoodClient
import io.github.jan.supabase.annotiations.SupabaseExperimental
import io.github.jan.supabase.createSupabaseClient
import io.github.jan.supabase.plugins.standaloneSupabaseModule
import io.github.jan.supabase.postgrest.Postgrest
import io.github.jan.supabase.postgrest.postgrest
import kotlinx.serialization.json.jsonArray
import kotlinx.serialization.json.jsonNull
import org.jetbrains.exposed.sql.Column
import org.jetbrains.exposed.sql.ColumnSet


class SupabaseProfileClient {
    private val supabaseUrl = "https://qyqqzftymegxiemintrs.supabase.co/"
    private val supabaseKey = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InF5cXF6ZnR5bWVneGllbWludHJzIiwicm9sZSI6ImFub24iLCJpYXQiOjE2Nzk4MzYyNzgsImV4cCI6MTk5NTQxMjI3OH0.7JPVILpQDuevPVj1HK-uihNh9u322o_Ow-J289mocvM"

    companion object {
        val INSTANCE = SupabaseProfileClient()
    }

    val client = createSupabaseClient(
        supabaseUrl, supabaseKey
    ) {
        install(Postgrest)
    }
    suspend fun setProfile(profile: ProfileRegistration) {
        val checkProfile = getProfile(profile.telephoneNumber, profile.password)
        if (checkProfile != null)
            return

        client.postgrest["profile"].insert(profile)
        println("Пользователь добавлен")
    }

    suspend fun getProfile(numberPhone: String, password: String): Profile? {
        val result = client.postgrest["profile"].select {
            eq("telephoneNumber", numberPhone)
            eq("password", password)
        }

        if (result.body.jsonArray.isNotEmpty()) {
            println("Пользователь существует")
            return result.decodeSingle()
        }

        return null
    }

    suspend fun getProfileByPhone(numberPhone: String): Profile? {
        val result = client.postgrest["profile"].select {
            eq("telephoneNumber", numberPhone)
        }

        if (result.body.jsonArray.isNotEmpty()) {
            println("Пользователь существует")
            return result.decodeSingle()
        }

        return null
    }





    private val mypostgr = standaloneSupabaseModule(Postgrest, url = supabaseUrl, apiKey = supabaseKey)

}