
with source as (

    select * from {{ source('raw_salesforce', 'pse_triggers_c') }}

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
        pse_handle_assign_project_phase_changes_disable_c,
        pse_handle_assignment_project_meth_change_disable_c,
        pse_recalculate_est_vs_actuals_disabled_c,
        pse_recalculate_est_vs_actuals_enabled_c,
        pse_res_request_geolocation_trigger_disabled_c,
        pse_resource_geolocation_trigger_disabled_c,
        pse_skill_unique_name_trigger_disabled_c,
        pse_skill_unique_name_under_parent_c,
        pse_task_assignment_delete_disabled_c,
        pse_task_assignment_insert_disabled_c,
        pse_task_assignment_update_disabled_c,
        pse_task_delete_disabled_c,
        pse_task_insert_disabled_c,
        pse_task_set_task_chain_disabled_c,
        pse_task_update_disabled_c,
        pse_task_validation_trigger_disabled_c,
        pse_track_resource_changes_disabled_c,
        pse_track_resource_changes_enabled_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
