
with source as (

    select * from {{ source('raw_salesforce', 'pse_timecard_entry_ui_global_c_history') }}

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
        pse_allow_timecard_with_negative_hours_c,
        pse_assignment_load_limit_c,
        pse_assignment_lookup_columns_c,
        pse_assignment_lookup_fieldset_name_c,
        pse_assignments_load_date_restriction_c,
        pse_assignments_load_status_values_c,
        pse_check_for_previous_week_timecards_c,
        pse_day_hour_auto_revert_ceiling_c,
        pse_day_hour_auto_revert_floor_c,
        pse_display_account_on_resource_lookup_c,
        pse_project_lookup_columns_c,
        pse_project_lookup_fieldset_name_c,
        pse_projects_load_date_restriction_c,
        pse_resource_access_c,
        pse_resource_lookup_columns_c,
        pse_resource_lookup_fieldset_name_c,
        pse_save_submit_batch_size_c,
        pse_save_timecard_with_zero_hours_c,
        pse_schedule_editable_c,
        pse_submit_timecard_with_zero_hours_c,
        pse_tc_entry_save_batch_size_c,
        pse_tc_sorted_by_order_c,
        pse_timecard_edit_status_values_c,
        pse_timecard_save_button_action_c,
        pse_timecard_submit_button_action_c,
        pse_use_project_location_records_c,
        pse_use_project_methodology_records_c,
        pse_use_project_phase_records_c,
        pse_week_start_day_c,
        setup_owner_id,
        system_modstamp,
        pse_enforce_submit_all_timecards_c,
        pse_use_local_storage_for_column_preferences_c

    from source

)

select * from renamed
