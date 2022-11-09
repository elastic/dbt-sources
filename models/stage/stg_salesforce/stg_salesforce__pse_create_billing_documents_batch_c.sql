
with source as (

    select * from {{ source('raw_salesforce', 'pse_create_billing_documents_batch_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        pse_apex_job_id_c,
        pse_batch_process_c,
        pse_notification_type_c,
        pse_status_c,
        pse_total_number_of_aborts_c,
        pse_total_number_of_errors_c,
        pse_total_number_of_external_c,
        pse_total_number_of_logs_c,
        system_modstamp

    from source

)

select * from renamed
