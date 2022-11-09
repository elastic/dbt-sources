
with source as (

    select * from {{ source('raw_salesforce', 'pse_default_assignments_for_jira_batch_c_history') }}

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
        owner_id,
        pse_apex_job_id_c,
        pse_batch_process_c,
        pse_default_assignments_for_jira_batch_id_c,
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
