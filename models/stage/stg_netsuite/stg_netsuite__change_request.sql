
with source as (

    select * from {{ source('raw_netsuite', 'change_request') }}

),

renamed as (

    select
        additional_approvers_sort_ord,
        affected_bundle_id,
        all_approvers_reason,
        approval_override_by_id,
        approval_status_id,
        approver_notes,
        archiving_status_id,
        auditor_assigned,
        autoapprove_based_on_bundle,
        budgeted_cost,
        budgeted_hours,
        change_level_required_id,
        change_overview,
        change_request_extid,
        change_request_id,
        change_request_name,
        change_type_id,
        completion_status_id,
        created_from_id,
        date_created,
        deployment_date,
        external_audit_comments,
        external_audit_status_id,
        external_change_request_numbe,
        external_link,
        flo_incident_number,
        impact_analysis,
        import_from_processes,
        include_impacted_customziatio,
        internal_audit_comments,
        internal_audit_status_id,
        is_inactive,
        jira_approve_from_ui,
        last_external_audit_id,
        last_internal_audit_id,
        last_modified_date,
        lastapprover,
        manually_change,
        new_customization_to_add,
        order_approver,
        originated_system,
        originating_case_company_id,
        originating_case_id,
        parent_change_request_id,
        parent_id,
        parent_prod_cr,
        priority_level_id,
        project_id,
        proposed_customizations,
        reason,
        reason_for_role_or_permission,
        rejected_by_id,
        remove_inactive_customization,
        results_filter,
        results_filter_file,
        sampled_for_audit_id,
        sendalert,
        single_policy_reference_id,
        sod_failed_to_add_rolespermis,
        sod_post_approval_pending,
        source_environment_id,
        stage_id,
        status_bar_state_id,
        target_account,
        target_environment_id

    from source

)

select * from renamed
