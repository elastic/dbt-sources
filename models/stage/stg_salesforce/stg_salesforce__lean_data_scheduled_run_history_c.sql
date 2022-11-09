
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_scheduled_run_history_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        lean_data_apex_job_c,
        lean_data_deployment_id_c,
        lean_data_failed_record_ids_c,
        lean_data_failed_records_c,
        lean_data_job_status_c,
        lean_data_num_processed_c,
        lean_data_num_records_c,
        lean_data_run_end_c,
        lean_data_scheduled_routing_job_c,
        lean_data_snapshot_details_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
