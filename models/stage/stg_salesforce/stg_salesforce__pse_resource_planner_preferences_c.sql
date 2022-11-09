
with source as (

    select * from {{ source('raw_salesforce', 'pse_resource_planner_preferences_c') }}

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
        pse_display_decimal_precision_cutoff_c,
        pse_hide_inline_dialog_c,
        pse_inline_edit_mode_thhc_c,
        pse_lower_threshold_summary_bar_limit_c,
        pse_resource_availability_in_hours_c,
        pse_show_holiday_icon_c,
        pse_show_shift_schedule_assignments_c,
        pse_upper_threshold_summary_bar_limit_c,
        pse_use_utilization_target_c,
        pse_zoom_level_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
