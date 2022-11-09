
with source as (

    select * from {{ source('raw_salesforce', 'pse_project_planner_preferences_c_history') }}

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
        pse_display_decimal_precision_cutoff_c,
        pse_hide_inline_dialog_c,
        pse_inline_edit_mode_thhc_c,
        pse_show_project_indicator_c,
        pse_show_shift_schedule_assignments_c,
        pse_zoom_level_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
