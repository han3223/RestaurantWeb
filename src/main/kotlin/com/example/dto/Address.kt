package com.example.dto

import kotlinx.serialization.Serializable

@Serializable
data class Address(val id: Int, val address: String) {
}
