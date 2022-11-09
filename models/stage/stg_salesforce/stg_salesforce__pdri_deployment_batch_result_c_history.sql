
with source as (

    select * from {{ source('raw_salesforce', 'pdri_deployment_batch_result_c_history') }}

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
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        pdri_data_record_failures_c,
        pdri_data_record_failures_icon_c,
        pdri_data_set_c,
        pdri_deployment_batch_result_link_c,
        pdri_deployment_completed_date_time_c,
        pdri_deployment_data_set_result_c,
        pdri_deployment_data_set_result_link_c,
        pdri_deployment_data_set_status_c,
        pdri_deployment_duration_minutes_c,
        pdri_deployment_duration_seconds_c,
        pdri_deployment_plan_step_result_c,
        pdri_deployment_started_date_time_c,
        pdri_job_id_c,
        pdri_object_name_c,
        pdri_operation_c,
        pdri_result_c,
        pdri_result_icon_c,
        pdri_result_id_c,
        pdri_upsert_method_used_c,
        system_modstamp,
        pdri_data_records_failed_c,
        pdri_data_records_processed_c,
        pdri_data_records_succeeded_c

    from source

)

select * from renamed
