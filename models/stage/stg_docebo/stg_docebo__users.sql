
with source as (

    select * from {{ source('raw_docebo', 'users') }}

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
        encoded_username,
        multidomains,
        manager_names,
        managers,
        role_id,
        role_title,
        active_subordinates_count,
        actions,
        expired

    from source

)

select * from renamed
