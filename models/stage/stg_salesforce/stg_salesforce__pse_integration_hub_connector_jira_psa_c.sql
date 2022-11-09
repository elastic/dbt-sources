
with source as (

    select * from {{ source('raw_salesforce', 'pse_integration_hub_connector_jira_psa_c') }}

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
        pse_email_c,
        pse_jira_application_url_c,
        pse_jira_issue_status_category_c,
        pse_jira_issue_type_c,
        pse_jira_welcome_email_for_synced_resources_c,
        pse_map_psa_projects_to_jira_issues_c,
        pse_max_resource_days_per_week_c,
        pse_max_resource_hours_per_day_c,
        pse_parent_issue_field_c,
        pse_psa_field_value_for_updating_projects_c,
        pse_sync_jira_work_logs_to_psa_timecards_c,
        pse_sync_psa_projects_to_jira_issues_c,
        pse_sync_psa_projects_to_jira_projects_c,
        pse_sync_psa_resources_to_jira_users_c,
        pse_timecard_status_c,
        pse_update_projects_based_on_issue_status_c,
        pse_use_jira_cloud_c,
        setup_owner_id,
        system_modstamp,
        pse_sync_psa_project_tasks_to_jira_issues_c,
        pse_sync_jira_issues_to_psa_project_tasks_c,
        pse_retry_project_task_sync_batch_size_c,
        pse_project_task_jira_issue_types_c,
        pse_update_task_status_based_on_issue_status_c,
        pse_use_psa_as_source_for_project_task_sync_c

    from source

)

select * from renamed
