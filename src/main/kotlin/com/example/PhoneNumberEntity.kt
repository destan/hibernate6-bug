package com.example

import jakarta.persistence.*
import java.time.Instant

@Entity
@Table(name = "phone_number")
class PhoneNumberEntity(

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "phone_number_id_seq")
    @SequenceGenerator(name = "phone_number_id_seq", sequenceName = "phone_number_id_seq", allocationSize = 1)
    var id: Long?,

    @Column(name = "user_id", nullable = false)
    val userId: Long?,

    @Column(unique = true)
    val phone: String,

    var verifiedAt: Instant?,

    var verifiedBy: Long?
)