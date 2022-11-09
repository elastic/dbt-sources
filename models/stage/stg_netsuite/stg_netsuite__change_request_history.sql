
with source as (

    select * from {{ source('raw_netsuite', 'change_request_history') }}

),

renamed as (

    select
        affected_bundle_id,
        all_approvers_reason,
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
        impact_analysis,
        import_from_processes,
        include_impacted_customziatio,
        internal_audit_comments,
        internal_audit_status_id,
        is_inactive,
        jira_approve_from_ui,
        lastapprover,
        last_external_audit_id,
        last_internal_audit_id,
        last_modified_date,
        manually_change,
        new_customization_to_add,
        order_approver,
        originated_system,
        originating_case_company_id,
        originating_case_id,
        parent_change_request_id,
        parent_id,
        parent_prod_cr,
        project_id,
        proposed_customizations,
        reason,
        rejected_by_id,
        remove_inactive_customization,
        results_filter,
        sampled_for_audit_id,
        sendalert,
        single_policy_reference_id,
        sod_post_approval_pending,
        source_environment_id,
        stage_id,
        target_account,
        target_environment_id,
        additional_approvers_sort_ord,
        approval_override_by_id,
        priority_level_id,
        reason_for_role_or_permission,
        results_filter_file,
        status_bar_state_id,
        flo_incident_number,
        sod_failed_to_add_rolespermis

    from source

)

select * from renamed
