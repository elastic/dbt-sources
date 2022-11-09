
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_scheduled_job_run_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_apex_job_id_c,
        fferpcore_batch_process_c,
        fferpcore_batch_process_status_c,
        fferpcore_notification_type_c,
        fferpcore_process_c,
        fferpcore_status_c,
        fferpcore_total_number_of_aborts_c,
        fferpcore_total_number_of_errors_c,
        fferpcore_total_number_of_external_c,
        fferpcore_total_number_of_logs_c,
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
