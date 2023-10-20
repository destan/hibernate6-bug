package com.example

import io.micronaut.data.annotation.Repository
import io.micronaut.data.jpa.repository.JpaRepository
import jakarta.persistence.EntityManager

@Repository
abstract class UserRepository() : JpaRepository<UserEntity, Long>
