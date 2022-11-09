
with source as (

    select * from {{ source('raw_salesforce', 'pse_timecard_approval_ui_c_history') }}

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
        pse_always_group_timecard_approvals_c,
        pse_filter_section_field_set_name_c,
        pse_number_of_timecards_shown_per_page_c,
        pse_selected_primary_group_c,
        pse_selected_secondary_group_c,
        pse_show_assignment_name_c,
        pse_show_billable_field_c,
        pse_show_daily_hours_c,
        pse_show_daily_notes_with_hours_c,
        pse_show_etc_field_c,
        pse_show_milestone_name_c,
        pse_show_project_name_c,
        pse_show_resource_name_c,
        pse_show_timecard_name_c,
        pse_show_total_hours_field_c,
        pse_show_week_dates_as_column_headers_c,
        pse_show_week_ending_field_c,
        pse_timecard_tooltip_fieldset_name_c,
        pse_tooltip_fields_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
