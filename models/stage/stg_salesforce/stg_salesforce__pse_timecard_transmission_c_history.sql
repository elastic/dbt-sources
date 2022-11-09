
with source as (

    select * from {{ source('raw_salesforce', 'pse_timecard_transmission_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_batch_limit_c,
        pse_end_date_c,
        pse_message_c,
        pse_records_processed_c,
        pse_start_date_c,
        pse_status_c,
        system_modstamp

    from source

)

select * from renamed
