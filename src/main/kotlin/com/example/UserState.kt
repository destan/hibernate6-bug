package com.example


internal interface UserState {
    val email: String?
    val password: String?
    val isEnabled: Boolean?
    val isVerified: Boolean?
    val isAccountExpired: Boolean?
    val isAccountLocked: Boolean?
    val isPasswordExpired: Boolean?
    val isAccountOwner: Boolean?
        get() = false
}