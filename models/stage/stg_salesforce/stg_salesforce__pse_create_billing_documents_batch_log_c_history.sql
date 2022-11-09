
with source as (

    select * from {{ source('raw_salesforce', 'pse_create_billing_documents_batch_log_c_history') }}

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
        name,
        pse_create_billing_documents_batch_c,
        pse_log_type_c,
        pse_message_c,
        system_modstamp

    from source

)

select * from renamed