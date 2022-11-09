
with source as (

    select * from {{ source('raw_salesforce', 'pdri_deployment_data_set_result_c') }}

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
        pdri_data_record_failures_c,
        pdri_data_record_failures_icon_c,
        pdri_data_set_c,
        pdri_deployment_completed_date_time_c,
        pdri_deployment_duration_minutes_c,
        pdri_deployment_duration_seconds_c,
        pdri_deployment_result_c,
        pdri_deployment_started_date_time_c,
        pdri_error_c,
        pdri_result_c,
        pdri_result_icon_c,
        pdri_status_c,
        system_modstamp

    from source

)

select * from renamed
