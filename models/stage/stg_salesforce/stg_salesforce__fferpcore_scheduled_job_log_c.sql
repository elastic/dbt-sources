
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_scheduled_job_log_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_batch_run_c,
        fferpcore_billing_document_c,
        fferpcore_log_message_c,
        fferpcore_log_type_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
