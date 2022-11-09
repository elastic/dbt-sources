
with source as (

    select * from {{ source('raw_salesforce', 'pse_project_gantt_preferences_c') }}

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
        pse_alert_task_dates_milestone_c,
        pse_alert_task_dates_project_c,
        pse_alert_task_dates_pta_dates_c,
        pse_alert_task_hours_pta_hours_c,
        pse_enable_day_detail_c,
        pse_hide_save_preview_c,
        pse_resource_demand_default_c,
        pse_show_task_notes_c,
        pse_single_click_task_selection_c,
        pse_suppress_auto_link_pta_c,
        pse_zoom_level_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
