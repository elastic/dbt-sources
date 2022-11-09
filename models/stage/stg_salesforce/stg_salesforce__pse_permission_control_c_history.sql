
with source as (

    select * from {{ source('raw_salesforce', 'pse_permission_control_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_billing_c,
        pse_cascading_permission_c,
        pse_compare_project_version_c,
        pse_create_project_version_c,
        pse_delete_project_version_c,
        pse_edit_task_manager_c,
        pse_end_date_c,
        pse_expense_entry_c,
        pse_expense_ops_edit_c,
        pse_forecast_edit_c,
        pse_forecast_view_c,
        pse_group_c,
        pse_invoicing_c,
        pse_practice_c,
        pse_project_c,
        pse_region_c,
        pse_resource_c,
        pse_resource_request_entry_c,
        pse_skills_and_certifications_entry_c,
        pse_skills_and_certifications_view_c,
        pse_staffing_c,
        pse_start_date_c,
        pse_team_c,
        pse_team_create_c,
        pse_team_edit_c,
        pse_team_view_c,
        pse_timecard_entry_c,
        pse_timecard_ops_edit_c,
        pse_user_c,
        pse_view_task_manager_c,
        system_modstamp

    from source

)

select * from renamed
