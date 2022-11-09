
with source as (

    select * from {{ source('raw_salesforce', 'pse_project_planner_settings_c') }}

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
        pse_add_holidays_on_assignment_adjust_c,
        pse_allow_mass_move_assignments_c,
        pse_assignment_additional_fields_fieldset_c,
        pse_assignment_color_field_c,
        pse_assignment_ordering_c,
        pse_assignment_search_fieldset_name_c,
        pse_assignment_tooltip_field_set_c,
        pse_columns_field_set_c,
        pse_default_assignment_future_days_c,
        pse_default_assignment_historical_days_c,
        pse_default_resource_image_c,
        pse_filter_fieldset_name_c,
        pse_hide_cost_rate_c,
        pse_hide_inline_dialog_c,
        pse_inherit_proj_date_for_create_assignment_c,
        pse_inherit_role_for_create_assignment_c,
        pse_inline_edit_mode_thhc_c,
        pse_override_assignment_name_field_c,
        pse_override_resource_request_name_field_c,
        pse_preload_limit_c,
        pse_project_search_fieldset_name_c,
        pse_project_sumary_color_field_c,
        pse_project_summary_color_field_c,
        pse_project_tooltip_field_set_c,
        pse_record_load_limit_c,
        pse_require_staffing_permission_c,
        pse_res_request_tooltip_field_set_c,
        pse_resource_request_color_field_c,
        pse_resource_request_ordering_c,
        pse_resource_request_search_fieldset_name_c,
        pse_restrict_creation_past_dates_c,
        pse_restrict_editing_past_dates_c,
        pse_restrict_swapping_past_dates_c,
        pse_save_column_prefs_c,
        pse_use_beige_c,
        pse_use_light_blue_c,
        pse_use_light_green_c,
        pse_use_light_red_c,
        pse_use_light_yellow_c,
        pse_use_pink_c,
        pse_use_purple_c,
        pse_use_turquoise_c,
        pse_use_v_2_planner_c,
        setup_owner_id,
        system_modstamp,
        pse_scheduling_mode_c

    from source

)

select * from renamed
