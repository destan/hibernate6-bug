
    create sequence email_address_id_seq start with 1 increment by 1;

    create sequence phone_number_id_seq start with 1 increment by 1;

    create sequence user_id_seq start with 1 increment by 1;

    create table app_user (
        account_expired boolean not null,
        account_locked boolean not null,
        deleted boolean not null,
        enabled boolean not null,
        password_expired boolean not null,
        created_at bigint not null,
        id bigint not null,
        updated_at bigint not null,
        email varchar(255) unique,
        full_name varchar(255),
        language varchar(255) check (language in ('TR','EN')),
        password varchar(255) not null,
        phone varchar(255) unique,
        role varchar(255),
        primary key (id)
    );

    create table app_user_merge (
        source_user_id bigint not null,
        target_user_id bigint not null unique,
        primary key (source_user_id)
    );

    create table app_user_tags (
        user_entity_id bigint not null,
        tags varchar(255)
    );

    create table email_address (
        id bigint not null,
        user_id bigint not null,
        verified_at timestamp(6) with time zone,
        verified_by bigint,
        email varchar(255) unique,
        primary key (id)
    );

    create table phone_number (
        id bigint not null,
        user_id bigint not null,
        verified_at timestamp(6) with time zone,
        verified_by bigint,
        phone varchar(255) unique,
        primary key (id)
    );

    alter table if exists app_user_merge 
       add constraint FK71hhb84e85kkqsby6dy18dgs1 
       foreign key (target_user_id) 
       references app_user;

    alter table if exists app_user_merge 
       add constraint FK4kuwosb28o0go233mnoi3c3o5 
       foreign key (source_user_id) 
       references app_user;

    alter table if exists app_user_tags 
       add constraint FKmq8td10c2h0s19qdojd82ltu0 
       foreign key (user_entity_id) 
       references app_user;

    alter table if exists email_address 
       add constraint FKgl235vh2yqd5550ujgaqkgbte 
       foreign key (user_id) 
       references app_user;

    alter table if exists phone_number 
       add constraint FKdx3qwoiecyeabemiljuui5yh5 
       foreign key (user_id) 
       references app_user;

    create sequence email_address_id_seq start with 1 increment by 1;

    create sequence phone_number_id_seq start with 1 increment by 1;

    create sequence user_id_seq start with 1 increment by 1;

    create table app_user (
        account_expired boolean not null,
        account_locked boolean not null,
        deleted boolean not null,
        enabled boolean not null,
        password_expired boolean not null,
        created_at bigint not null,
        id bigint not null,
        updated_at bigint not null,
        email varchar(255) unique,
        full_name varchar(255),
        language varchar(255) check (language in ('TR','EN')),
        password varchar(255) not null,
        phone varchar(255) unique,
        role varchar(255),
        primary key (id)
    );

    create table app_user_merge (
        source_user_id bigint not null,
        target_user_id bigint not null unique,
        primary key (source_user_id)
    );

    create table app_user_tags (
        user_entity_id bigint not null,
        tags varchar(255)
    );

    create table email_address (
        id bigint not null,
        user_id bigint not null,
        verified_at timestamp(6) with time zone,
        verified_by bigint,
        email varchar(255) unique,
        primary key (id)
    );

    create table phone_number (
        id bigint not null,
        user_id bigint not null,
        verified_at timestamp(6) with time zone,
        verified_by bigint,
        phone varchar(255) unique,
        primary key (id)
    );

    alter table if exists app_user_merge 
       add constraint FK71hhb84e85kkqsby6dy18dgs1 
       foreign key (target_user_id) 
       references app_user;

    alter table if exists app_user_merge 
       add constraint FK4kuwosb28o0go233mnoi3c3o5 
       foreign key (source_user_id) 
       references app_user;

    alter table if exists app_user_tags 
       add constraint FKmq8td10c2h0s19qdojd82ltu0 
       foreign key (user_entity_id) 
       references app_user;

    alter table if exists email_address 
       add constraint FKgl235vh2yqd5550ujgaqkgbte 
       foreign key (user_id) 
       references app_user;

    alter table if exists phone_number 
       add constraint FKdx3qwoiecyeabemiljuui5yh5 
       foreign key (user_id) 
       references app_user;
CREATE SEQUENCE user_id_seq;

    create sequence email_address_id_seq start with 1 increment by 1;

    create sequence phone_number_id_seq start with 1 increment by 1;

    create sequence user_id_seq start with 1 increment by 1;

    create table app_user (
        account_expired boolean not null,
        account_locked boolean not null,
        deleted boolean not null,
        enabled boolean not null,
        password_expired boolean not null,
        created_at bigint not null,
        id bigint not null,
        updated_at bigint not null,
        email varchar(255) unique,
        full_name varchar(255),
        language varchar(255) check (language in ('TR','EN')),
        password varchar(255) not null,
        phone varchar(255) unique,
        role varchar(255),
        primary key (id)
    );

    create table app_user_merge (
        source_user_id bigint not null,
        target_user_id bigint not null unique,
        primary key (source_user_id)
    );

    create table app_user_tags (
        user_entity_id bigint not null,
        tags varchar(255)
    );

    create table email_address (
        id bigint not null,
        user_id bigint not null,
        verified_at timestamp(6) with time zone,
        verified_by bigint,
        email varchar(255) unique,
        primary key (id)
    );

    create table phone_number (
        id bigint not null,
        user_id bigint not null,
        verified_at timestamp(6) with time zone,
        verified_by bigint,
        phone varchar(255) unique,
        primary key (id)
    );

    alter table if exists app_user_merge 
       add constraint FK71hhb84e85kkqsby6dy18dgs1 
       foreign key (target_user_id) 
       references app_user;

    alter table if exists app_user_merge 
       add constraint FK4kuwosb28o0go233mnoi3c3o5 
       foreign key (source_user_id) 
       references app_user;

    alter table if exists app_user_tags 
       add constraint FKmq8td10c2h0s19qdojd82ltu0 
       foreign key (user_entity_id) 
       references app_user;

    alter table if exists email_address 
       add constraint FKgl235vh2yqd5550ujgaqkgbte 
       foreign key (user_id) 
       references app_user;

    alter table if exists phone_number 
       add constraint FKdx3qwoiecyeabemiljuui5yh5 
       foreign key (user_id) 
       references app_user;
CREATE SEQUENCE user_id_seq;

    create sequence email_address_id_seq start with 1 increment by 1;

    create sequence phone_number_id_seq start with 1 increment by 1;

    create sequence user_id_seq start with 1 increment by 1;

    create table app_user (
        account_expired boolean not null,
        account_locked boolean not null,
        deleted boolean not null,
        enabled boolean not null,
        password_expired boolean not null,
        created_at bigint not null,
        id bigint not null,
        updated_at bigint not null,
        email varchar(255) unique,
        full_name varchar(255),
        language varchar(255) check (language in ('TR','EN')),
        password varchar(255) not null,
        phone varchar(255) unique,
        role varchar(255),
        primary key (id)
    );

    create table app_user_merge (
        source_user_id bigint not null,
        target_user_id bigint not null unique,
        primary key (source_user_id)
    );

    create table app_user_tags (
        user_entity_id bigint not null,
        tags varchar(255)
    );

    create table email_address (
        id bigint not null,
        user_id bigint not null,
        verified_at timestamp(6) with time zone,
        verified_by bigint,
        email varchar(255) unique,
        primary key (id)
    );

    create table phone_number (
        id bigint not null,
        user_id bigint not null,
        verified_at timestamp(6) with time zone,
        verified_by bigint,
        phone varchar(255) unique,
        primary key (id)
    );

    alter table if exists app_user_merge 
       add constraint FK71hhb84e85kkqsby6dy18dgs1 
       foreign key (target_user_id) 
       references app_user;

    alter table if exists app_user_merge 
       add constraint FK4kuwosb28o0go233mnoi3c3o5 
       foreign key (source_user_id) 
       references app_user;

    alter table if exists app_user_tags 
       add constraint FKmq8td10c2h0s19qdojd82ltu0 
       foreign key (user_entity_id) 
       references app_user;

    alter table if exists email_address 
       add constraint FKgl235vh2yqd5550ujgaqkgbte 
       foreign key (user_id) 
       references app_user;

    alter table if exists phone_number 
       add constraint FKdx3qwoiecyeabemiljuui5yh5 
       foreign key (user_id) 
       references app_user;
CREATE SEQUENCE user_id_seq;

    create sequence email_address_id_seq start with 1 increment by 1;

    create sequence hibernate_sequence start with 1 increment by 1;

    create sequence phone_number_id_seq start with 1 increment by 1;

    create table app_user (
        account_expired boolean not null,
        account_locked boolean not null,
        deleted boolean not null,
        enabled boolean not null,
        password_expired boolean not null,
        created_at bigint not null,
        id bigint not null,
        updated_at bigint not null,
        email varchar(255) unique,
        full_name varchar(255),
        language varchar(255) check (language in ('TR','EN')),
        password varchar(255) not null,
        phone varchar(255) unique,
        role varchar(255),
        primary key (id)
    );

    create table app_user_merge (
        source_user_id bigint not null,
        target_user_id bigint not null unique,
        primary key (source_user_id)
    );

    create table app_user_tags (
        user_entity_id bigint not null,
        tags varchar(255)
    );

    create table email_address (
        id bigint not null,
        user_id bigint not null,
        verified_at timestamp(6) with time zone,
        verified_by bigint,
        email varchar(255) unique,
        primary key (id)
    );

    create table phone_number (
        id bigint not null,
        user_id bigint not null,
        verified_at timestamp(6) with time zone,
        verified_by bigint,
        phone varchar(255) unique,
        primary key (id)
    );

    alter table if exists app_user_merge 
       add constraint FK71hhb84e85kkqsby6dy18dgs1 
       foreign key (target_user_id) 
       references app_user;

    alter table if exists app_user_merge 
       add constraint FK4kuwosb28o0go233mnoi3c3o5 
       foreign key (source_user_id) 
       references app_user;

    alter table if exists app_user_tags 
       add constraint FKmq8td10c2h0s19qdojd82ltu0 
       foreign key (user_entity_id) 
       references app_user;

    alter table if exists email_address 
       add constraint FKgl235vh2yqd5550ujgaqkgbte 
       foreign key (user_id) 
       references app_user;

    alter table if exists phone_number 
       add constraint FKdx3qwoiecyeabemiljuui5yh5 
       foreign key (user_id) 
       references app_user;
CREATE SEQUENCE user_id_seq;

    create sequence email_address_id_seq start with 1 increment by 1;

    create sequence hibernate_sequence start with 1 increment by 1;

    create sequence phone_number_id_seq start with 1 increment by 1;

    create table app_user (
        account_expired boolean not null,
        account_locked boolean not null,
        deleted boolean not null,
        enabled boolean not null,
        password_expired boolean not null,
        created_at bigint not null,
        id bigint not null,
        updated_at bigint not null,
        email varchar(255) unique,
        full_name varchar(255),
        language varchar(255) check (language in ('TR','EN')),
        password varchar(255) not null,
        phone varchar(255) unique,
        role varchar(255),
        primary key (id)
    );

    create table app_user_merge (
        source_user_id bigint not null,
        target_user_id bigint not null unique,
        primary key (source_user_id)
    );

    create table app_user_tags (
        user_entity_id bigint not null,
        tags varchar(255)
    );

    create table email_address (
        id bigint not null,
        user_id bigint not null,
        verified_at timestamp(6) with time zone,
        verified_by bigint,
        email varchar(255) unique,
        primary key (id)
    );

    create table phone_number (
        id bigint not null,
        user_id bigint not null,
        verified_at timestamp(6) with time zone,
        verified_by bigint,
        phone varchar(255) unique,
        primary key (id)
    );

    alter table if exists app_user_merge 
       add constraint FK71hhb84e85kkqsby6dy18dgs1 
       foreign key (target_user_id) 
       references app_user;

    alter table if exists app_user_merge 
       add constraint FK4kuwosb28o0go233mnoi3c3o5 
       foreign key (source_user_id) 
       references app_user;

    alter table if exists app_user_tags 
       add constraint FKmq8td10c2h0s19qdojd82ltu0 
       foreign key (user_entity_id) 
       references app_user;

    alter table if exists email_address 
       add constraint FKgl235vh2yqd5550ujgaqkgbte 
       foreign key (user_id) 
       references app_user;

    alter table if exists phone_number 
       add constraint FKdx3qwoiecyeabemiljuui5yh5 
       foreign key (user_id) 
       references app_user;
CREATE SEQUENCE user_id_seq;
