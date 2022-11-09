
with source as (

    select * from {{ source('raw_salesforce', 'pse_integration_hub_connector_instances_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        pse_allow_deletion_of_assignments_c,
        pse_allow_deletion_of_projects_c,
        pse_approval_status_c,
        pse_call_back_url_c,
        pse_concur_field_for_expense_billable_type_c,
        pse_concur_field_for_psa_project_c,
        pse_concur_field_for_psa_resource_assignment_c,
        pse_concur_filter_by_billable_expenses_field_c,
        pse_delete_workflow_name_c,
        pse_email_c,
        pse_expense_report_billable_mapping_c,
        pse_expense_report_status_mapping_c,
        pse_expenses_sync_workflow_name_c,
        pse_initial_sync_chunk_size_c,
        pse_initial_sync_workflow_name_c,
        pse_oauth_proxy_name_c,
        pse_project_workflow_name_c,
        pse_psa_filter_field_for_assignment_c,
        pse_psa_filter_field_for_project_c,
        pse_resource_assignment_sync_workflow_name_c,
        pse_sync_project_managers_c,
        pse_synched_assignments_c,
        pse_synched_projects_c,
        pse_synched_resources_c,
        setup_owner_id,
        system_modstamp,
        pse_concur_api_url_suffix_c

    from source

)

select * from renamed
