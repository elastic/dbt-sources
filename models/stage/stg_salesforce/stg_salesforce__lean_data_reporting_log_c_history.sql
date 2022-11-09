
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_reporting_log_c_history') }}

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
        lean_data_attribution_errors_c,
        lean_data_batch_summary_c,
        lean_data_batches_with_errors_c,
        lean_data_error_id_map_c,
        lean_data_full_settings_2_c,
        lean_data_full_settings_c,
        lean_data_log_date_time_c,
        lean_data_log_type_c,
        lean_data_marketing_touch_metrics_c,
        lean_data_old_settings_c,
        lean_data_run_end_c,
        lean_data_run_start_c,
        lean_data_run_type_c,
        lean_data_settings_page_c,
        lean_data_updated_settings_c,
        lean_data_user_c,
        name,
        owner_id,
        system_modstamp,
        lean_data_opportunity_freeze_c

    from source

)

select * from renamed
