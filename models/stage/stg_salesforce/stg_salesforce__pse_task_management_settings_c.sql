
with source as (

    select * from {{ source('raw_salesforce', 'pse_task_management_settings_c') }}

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
        pse_auto_create_task_assignment_all_or_none_c,
        pse_auto_create_task_assignment_c,
        pse_auto_delete_task_assignment_all_or_none_c,
        pse_auto_delete_task_assignment_c,
        pse_default_task_ordering_c,
        pse_project_limit_c,
        pse_pt_require_lock_fieldset_c,
        pse_pta_require_lock_fieldset_c,
        pse_ptd_require_lock_fieldset_c,
        pse_restrict_edit_end_date_milestone_c,
        pse_restrict_edit_end_date_project_c,
        pse_restrict_edit_pta_dates_c,
        pse_restrict_edit_pta_hours_c,
        pse_restrict_edit_start_date_milestone_c,
        pse_restrict_edit_start_date_project_c,
        pse_track_points_history_disabled_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
