
with source as (

    select * from {{ source('raw_salesforce', 'pdri_deployment_result_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pdri_data_record_failures_c,
        pdri_deployment_completed_date_time_c,
        pdri_deployment_duration_minutes_c,
        pdri_deployment_duration_seconds_c,
        pdri_deployment_started_date_time_c,
        pdri_error_c,
        pdri_last_deployed_data_set_c,
        pdri_last_deployed_data_set_result_c,
        pdri_of_data_sets_c,
        pdri_of_data_sets_processed_c,
        pdri_result_c,
        pdri_result_icon_c,
        pdri_source_connection_c,
        pdri_status_c,
        pdri_target_connection_c,
        pdri_type_c,
        pdri_vcs_branch_c,
        system_modstamp,
        pdri_deployment_c,
        pdri_deployment_notes_c

    from source

)

select * from renamed
