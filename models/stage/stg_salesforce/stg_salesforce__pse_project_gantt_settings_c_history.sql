
with source as (

    select * from {{ source('raw_salesforce', 'pse_project_gantt_settings_c_history') }}

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
        pse_break_current_locks_c,
        pse_columns_field_set_c,
        pse_disable_buffered_rendering_c,
        pse_disable_resolve_dependency_btn_on_sync_c,
        pse_leading_buffer_zone_c,
        pse_milestone_tooltip_c,
        pse_project_manager_access_c,
        pse_project_tooltip_c,
        pse_pta_tooltip_c,
        pse_read_only_field_set_c,
        pse_save_column_prefs_c,
        pse_show_generate_rrs_c,
        pse_show_hours_completion_percent_bar_c,
        pse_show_points_completion_percent_bar_c,
        pse_task_tooltip_c,
        pse_trailing_buffer_zone_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
