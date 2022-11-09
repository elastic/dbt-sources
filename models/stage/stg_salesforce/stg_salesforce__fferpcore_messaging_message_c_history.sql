
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_messaging_message_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_body_01_c,
        fferpcore_correlation_id_c,
        fferpcore_deletable_c,
        fferpcore_last_attempted_delivery_c,
        fferpcore_message_type_c,
        fferpcore_sender_c,
        fferpcore_state_c,
        fferpcore_time_to_live_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        last_referenced_date,
        last_viewed_date

    from source

)

select * from renamed
