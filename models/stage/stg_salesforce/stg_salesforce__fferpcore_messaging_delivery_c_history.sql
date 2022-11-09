
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_messaging_delivery_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_body_01_c,
        fferpcore_chunk_c,
        fferpcore_message_c,
        fferpcore_state_c,
        fferpcore_subscription_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed