package com.example

import jakarta.inject.Singleton
import jakarta.transaction.Transactional
import java.time.Instant
import java.util.HashSet
import java.util.LinkedHashSet

@Singleton
@Transactional
class DemoService(private val userRepository: UserRepository) {

    fun create() {

        val now = System.currentTimeMillis()
        val emailAddressEntity =
            EmailAddressEntity(null, 1L, "john@example.com", Instant.now(), now)

        val a: LinkedHashSet<EmailAddressEntity> = LinkedHashSet(mutableSetOf(emailAddressEntity))

        val phoneNumberEntity = PhoneNumberEntity(null, 1L, "+905055599088", Instant.now(), now)

        val b: LinkedHashSet<PhoneNumberEntity> = LinkedHashSet(mutableSetOf(phoneNumberEntity))

        val user = userRepository.save(UserEntity(null,
            "john@example.com",
            a,
            b,
            "password",
            "fullName",
            "+905055599088",
            "ADMIN",
            true,
            false,
            false,
            false,
            false,
            mutableSetOf(),
            Language.EN,
            //null,
            now,
            now
        ))


        user.email = "zaa@xd.com"

        userRepository.update(user)
    }

}