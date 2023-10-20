package com.example

import jakarta.persistence.*
import java.time.Instant

/**
 * Created on February, 2022
 *
 * @author kamer
 */
@Entity
@Table(name = "email_address")
class EmailAddressEntity (

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "email_address_id_seq")
    @SequenceGenerator(name = "email_address_id_seq", sequenceName = "email_address_id_seq", allocationSize = 1)
    var id: Long?,

    @Column(name= "user_id", nullable = false)
    val userId: Long?,

    @Column(unique = true)
    val email: String,

    var verifiedAt: Instant?,

    var verifiedBy: Long?
    )