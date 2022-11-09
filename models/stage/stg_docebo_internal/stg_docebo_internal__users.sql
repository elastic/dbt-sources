
with source as (

    select * from {{ source('raw_docebo_internal', 'users') }}

),

renamed as (

    select
        user_id,
        username,
        first_name,
        last_name,
        email,
        uuid,
        is_manager,
        fullname,
        lang_code,
        last_access_date,
        last_update,
        creation_date,
        status,
        avatar,
        language,
        expiration_date,
        level,
        email_validation_status,
        send_notification,
        timezone,
        date_format,
        encoded_username,
        multidomains,
        manager_names,
        managers,
        role_id,
        role_title,
        active_subordinates_count,
        actions,
        expired,
        field_1,
        field_2,
        field_3,
        field_4,
        field_5,
        field_6,
        field_7,
        field_8,
        field_9,
        field_10,
        field_11,
        field_12,
        field_13,
        field_14,
        field_15,
        field_16,
        field_17,
        field_18,
        field_19,
        field_20,
        field_21,
        field_22,
        field_23,
        field_24,
        field_25,
        field_26,
        field_27,
        field_28

    from source

)

select * from renamed
