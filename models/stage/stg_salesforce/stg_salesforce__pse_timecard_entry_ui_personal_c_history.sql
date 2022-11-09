
with source as (

    select * from {{ source('raw_salesforce', 'pse_timecard_entry_ui_personal_c_history') }}

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
        pse_additional_fields_c,
        pse_allow_zero_entry_c,
        pse_assignment_project_editable_after_save_c,
        pse_assignment_tooltip_fields_c,
        pse_billable_header_field_position_is_left_c,
        pse_combine_similar_timecards_c,
        pse_copy_additional_fields_from_previous_week_c,
        pse_copy_etc_from_previous_week_c,
        pse_copy_hours_from_previous_week_c,
        pse_copy_locations_from_previous_week_c,
        pse_copy_methodology_from_previous_week_c,
        pse_copy_milestone_from_previous_week_c,
        pse_copy_notes_from_previous_week_c,
        pse_copy_phase_from_previous_week_c,
        pse_copy_schedule_assignment_daily_notes_c,
        pse_copy_tasks_from_previous_week_c,
        pse_copy_travel_from_previous_week_c,
        pse_default_billable_c,
        pse_default_single_resource_search_result_c,
        pse_default_week_offset_c,
        pse_disable_cache_c,
        pse_empty_lines_to_append_on_add_lines_c,
        pse_empty_timecard_lines_to_append_by_def_c,
        pse_hide_billable_column_c,
        pse_hide_copy_from_previous_week_button_c,
        pse_hide_copy_previous_week_button_c,
        pse_hide_copy_schedules_button_c,
        pse_hide_expand_tasks_c,
        pse_hide_notes_column_c,
        pse_hide_save_button_c,
        pse_hide_show_all_tasks_my_tasks_c,
        pse_hide_submit_button_c,
        pse_hide_timecard_hours_in_calculated_mode_c,
        pse_hide_view_edit_details_link_c,
        pse_holiday_color_code_c,
        pse_hours_cell_pixel_width_c,
        pse_max_resource_hours_per_day_c,
        pse_maximum_resource_hours_per_week_c,
        pse_methodology_field_position_is_popup_c,
        pse_methodology_header_field_position_is_left_c,
        pse_milestone_field_position_is_popup_c,
        pse_milestone_header_field_position_is_left_c,
        pse_minimum_resource_hours_per_week_c,
        pse_nickname_editable_c,
        pse_note_location_allowed_c,
        pse_note_primary_location_allowed_c,
        pse_phase_field_position_is_popup_c,
        pse_phase_header_field_position_is_left_c,
        pse_pre_populate_task_c,
        pse_primary_loc_header_field_position_is_left_c,
        pse_primary_location_field_position_is_popup_c,
        pse_proj_assig_dropdown_account_custom_field_c,
        pse_project_editable_after_save_audit_notes_c,
        pse_project_task_tooltip_fieldset_name_c,
        pse_project_tooltip_fields_c,
        pse_restrict_task_based_on_assignment_c,
        pse_restrict_task_based_on_milestone_c,
        pse_save_column_preferences_c,
        pse_schedule_assignment_tooltip_fields_c,
        pse_schedule_grid_weekend_delta_c,
        pse_schedule_project_tooltip_fields_c,
        pse_show_alert_for_non_zero_holiday_hours_c,
        pse_show_alert_for_non_zero_weekend_hours_c,
        pse_show_billable_non_billable_hours_c,
        pse_show_easy_entry_popup_c,
        pse_show_milestone_as_field_c,
        pse_show_project_name_assignment_dropdown_c,
        pse_show_recall_on_timecards_c,
        pse_show_schedule_grid_c,
        pse_show_schedule_grid_expanded_by_default_c,
        pse_show_schedule_tooltips_c,
        pse_show_timecard_etc_c,
        pse_show_timecard_methodology_c,
        pse_show_timecard_milestone_c,
        pse_show_timecard_phase_c,
        pse_show_travel_c,
        pse_status_recall_column_not_fixed_c,
        pse_task_statuses_to_hide_c,
        pse_task_time_entry_assignment_filter_c,
        pse_task_time_entry_date_filter_c,
        pse_task_time_entry_mode_c,
        pse_tc_header_row_editable_fieldset_name_c,
        pse_tc_header_row_left_editable_fieldset_name_c,
        pse_tc_header_row_readonly_fieldset_name_c,
        pse_tc_hour_fields_to_copy_from_schedule_c,
        pse_tc_notes_field_editable_fieldset_name_c,
        pse_tc_notes_field_readonly_fieldset_name_c,
        pse_tc_status_to_hide_c,
        pse_top_assignment_to_show_count_c,
        pse_top_assignment_week_load_limit_c,
        pse_top_project_to_show_count_c,
        pse_use_assignment_id_c,
        pse_use_field_set_for_timecard_ui_c,
        pse_weekend_color_code_c,
        pse_width_px_for_milestone_drop_down_c,
        pse_width_px_for_project_assig_drop_down_c,
        setup_owner_id,
        system_modstamp,
        pse_copy_task_hours_from_previous_week_c

    from source

)

select * from renamed
