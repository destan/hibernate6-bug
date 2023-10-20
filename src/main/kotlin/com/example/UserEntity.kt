package com.example

import com.fasterxml.jackson.annotation.JsonIgnore
import io.micronaut.data.annotation.Where
import jakarta.persistence.*
import org.hibernate.annotations.CacheConcurrencyStrategy
import java.util.HashSet
import java.util.LinkedHashSet

@Entity
@Table(name = "app_user")
@Where(value = "@.deleted = false")
class UserEntity (

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "user_id_seq")
    @SequenceGenerator(name = "user_id_seq", sequenceName = "user_id_seq", allocationSize = 1)
    var id: Long? = null,

    @Column(nullable = true, unique = true)
    override var email: String?,

    @org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
    @OneToMany(cascade = [CascadeType.ALL], orphanRemoval = true)
    @JoinColumn(name="user_id", referencedColumnName="id")
    var emails: MutableSet<EmailAddressEntity> = mutableSetOf(),

    @org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
    @OneToMany(cascade = [CascadeType.ALL], orphanRemoval = true)
    @JoinColumn(name="user_id", referencedColumnName="id")
    var phones: MutableSet<PhoneNumberEntity> = mutableSetOf(),

    @Column(nullable = false)
    @JsonIgnore
    override var password: String,

    var fullName: String?,

    @Column(unique = true)
    var phone: String?,

    @org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
    @Column(name = "role")
    var role: String,

//    @ManyToMany
//    @JoinTable(
//        name = UserGroupConstants.USER_GROUP_JOIN_TABLE_NAME,
//        joinColumns = [JoinColumn(name = "user_entity_id")],
//        inverseJoinColumns = [JoinColumn(name = "group_entity_id")]
//    )
//    @org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
//    var groups: LinkedHashSet<GroupEntity> = LinkedHashSet(),
//
//    @OneToMany(mappedBy = "user")
//    @org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
//    var userFields: LinkedHashSet<UserFieldEntity> = LinkedHashSet(),

    // Workaround: https://github.com/micronaut-projects/micronaut-data/issues/942#issuecomment-1067244594
    //@get:JvmName("getEnabled")
    var enabled: Boolean = true,

    //@get:JvmName("getAccountExpired")
    var accountExpired: Boolean = false,

    //@get:JvmName("getAccountLocked")
    var accountLocked: Boolean = false,

    //@get:JvmName("getPasswordExpired")
    var passwordExpired: Boolean = false,

//    @ManyToOne
//    @JoinColumn(name = "organization_id", referencedColumnName = "id")
//    private var organization: OrganizationEntity?,

    @get:JvmName("getDeleted")
    var deleted: Boolean = false,

    @ElementCollection(fetch = FetchType.EAGER)
    @CollectionTable(name = "app_user_tags")
    @org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
    var tags: MutableSet<String> = mutableSetOf(),

    @Enumerated(EnumType.STRING)
    var language: Language?, // only admin and agent has language

//    @OneToOne(fetch = FetchType.LAZY)
//    @JoinTable(
//        name = "app_user_merge",
//        joinColumns = [
//            JoinColumn(name = "source_user_id", referencedColumnName = "id", unique = true, nullable = false)
//        ],
//        inverseJoinColumns = [
//            JoinColumn(name = "target_user_id", referencedColumnName = "id", unique = false, nullable = false)
//        ]
//    )
//    var mergedTo: UserEntity? = null,

    @Column(nullable = false)
    val createdAt: Long,

    @Column(nullable = false)
    var updatedAt: Long,
) : UserState {

    @get:Transient
    override val isEnabled: Boolean?
        get() = enabled

    @get:Transient
    override val isVerified: Boolean?
        get() = true

    @get:Transient
    override val isAccountExpired: Boolean?
        get() = accountExpired

    @get:Transient
    override val isAccountLocked: Boolean?
        get() = accountLocked

    @get:Transient
    override val isPasswordExpired: Boolean?
        get() = passwordExpired

    @get:Transient
    override val isAccountOwner: Boolean?
        get() = false
}