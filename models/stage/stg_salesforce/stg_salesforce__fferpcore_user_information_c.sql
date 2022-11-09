
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_user_information_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_alias_c,
        fferpcore_email_c,
        fferpcore_first_name_c,
        fferpcore_is_user_active_c,
        fferpcore_last_name_c,
        fferpcore_message_c,
        fferpcore_notified_c,
        fferpcore_profile_name_c,
        fferpcore_status_c,
        fferpcore_timezone_sid_key_c,
        fferpcore_user_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
