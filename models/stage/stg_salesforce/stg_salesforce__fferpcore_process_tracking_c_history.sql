
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_process_tracking_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_message_data_c,
        fferpcore_outstanding_responses_c,
        fferpcore_process_token_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
