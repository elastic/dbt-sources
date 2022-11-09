
with source as (

    select * from {{ source('raw_salesforce', 'pse_assignment_settings_c') }}

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
        name,
        pse_adjust_hours_strategy_respects_holidays_c,
        pse_adjust_sched_date_on_assignment_close_c,
        pse_allow_resource_currency_on_assignment_c,
        pse_assig_res_is_resource_active_lookup_filter_c,
        pse_assig_res_is_resource_lookup_filter_c,
        pse_assign_resource_custom_lookup_c,
        pse_assign_resource_custom_lookup_columns_c,
        pse_assign_resource_milestone_lookup_c,
        pse_assign_resource_milestone_lookup_columns_c,
        pse_assign_resource_milestone_required_c,
        pse_assignment_closed_statuses_c,
        pse_assignment_name_project_name_max_length_c,
        pse_assignment_name_resource_name_max_length_c,
        pse_auto_share_with_new_resource_c,
        pse_delete_share_from_old_resource_c,
        pse_disable_bill_rate_null_check_in_trigger_c,
        pse_display_planned_bill_rate_c,
        pse_edit_schedule_default_strategy_c,
        pse_hide_adjust_hours_scheduling_strategy_c,
        pse_hide_custom_scheduling_strategy_c,
        pse_hide_ignore_avail_scheduling_strategy_c,
        pse_hide_level_schedule_scheduling_strategy_c,
        pse_hide_percent_alloc_scheduling_strategy_c,
        pse_hide_zero_hour_scheduling_strategy_c,
        pse_link_assignment_header_tooltip_fields_c,
        pse_link_methodology_header_tooltip_fields_c,
        pse_link_milestone_header_tooltip_fields_c,
        pse_link_phase_header_tooltip_fields_c,
        pse_mass_assign_milestone_editable_c,
        pse_mass_assign_milestone_required_c,
        pse_mass_assign_projects_load_limit_c,
        pse_mass_assign_resources_load_limit_c,
        pse_mass_assignments_default_ignore_holidays_c,
        pse_multi_assign_assignment_fieldset_name_c,
        pse_multi_assign_milestone_fieldset_name_c,
        pse_retain_schedule_exceptions_on_update_c,
        pse_role_hidden_c,
        pse_role_required_on_creation_c,
        pse_timecard_statuses_c,
        pse_update_project_monitor_fields_batch_size_c,
        pse_update_project_monitor_fields_sync_limit_c,
        pse_use_default_cost_rate_clear_on_assigning_c,
        pse_use_scheduled_days_c,
        setup_owner_id,
        system_modstamp,
        pse_disable_rpg_role_defaulting_c,
        pse_retain_schedule_on_assign_c,
        pse_default_scheduling_strategy_c

    from source

)

select * from renamed
