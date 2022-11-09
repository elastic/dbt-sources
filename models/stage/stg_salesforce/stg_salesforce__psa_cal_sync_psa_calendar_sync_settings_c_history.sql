
with source as (

    select * from {{ source('raw_salesforce', 'psa_cal_sync_psa_calendar_sync_settings_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        psa_cal_sync_assignment_location_api_name_c,
        psa_cal_sync_create_multi_day_events_c,
        psa_cal_sync_disable_calendar_triggers_c,
        psa_cal_sync_disable_time_of_day_c,
        psa_cal_sync_include_assignment_description_in_desc_c,
        psa_cal_sync_include_assignment_end_date_in_desc_c,
        psa_cal_sync_include_assignment_start_date_in_desc_c,
        psa_cal_sync_include_assignment_url_in_description_c,
        psa_cal_sync_include_billable_flag_in_description_c,
        psa_cal_sync_include_customer_specific_in_desc_c,
        psa_cal_sync_include_location_c,
        psa_cal_sync_include_milestone_name_in_desc_c,
        psa_cal_sync_include_percent_allocated_in_description_c,
        psa_cal_sync_include_project_manager_in_description_c,
        psa_cal_sync_include_project_url_in_description_c,
        psa_cal_sync_include_role_in_description_c,
        psa_cal_sync_include_schedule_end_date_in_desc_c,
        psa_cal_sync_include_schedule_pattern_in_description_c,
        psa_cal_sync_include_schedule_start_date_in_desc_c,
        psa_cal_sync_include_scheduled_hours_in_desc_c,
        psa_cal_sync_show_time_as_busy_c,
        psa_cal_sync_use_recurring_events_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
