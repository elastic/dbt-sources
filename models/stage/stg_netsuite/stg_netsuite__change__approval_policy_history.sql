
with source as (

    select * from {{ source('raw_netsuite', 'change__approval_policy_history') }}

),

renamed as (

    select
        change__approval_policy_extid,
        change__approval_policy_id,
        change__approval_policy_name,
        control_assignee_approval,
        control_changes_id,
        control_owner,
        date_created,
        default_policy,
        executive_approver_id,
        final_approver_id,
        final_approver_policy_chang_id,
        include_process_editors_as_al,
        is_inactive,
        last_modified_date,
        log_xml_only_change,
        max__of__approvals_required,
        merge_approval_lists,
        netsuite_set_up_changes_id,
        nonconforming_change_process_,
        nonconf_change_customization_,
        no_order_required,
        other_changes_id,
        parent_id,
        parent_policy_id,
        preliminary_approvers_id,
        preliminary_approver_policy_id,
        process_owners,
        require_affected_customizatio,
        require_affected_process_appr,
        require_impacted_customizatio,
        require_parent_process_owner_,
        require_related_process_appro,
        scripted_objects_changes_id,
        search_and_report_changes_id,
        sequential_approval_requests,
        subsidiary,
        update_child_policies,
        user_role_assignment_change_id,
        user_role_changes_id,
        user_role_related_objects_id,
        webrelated_changes_id,
        accounting_lists_id,
        bill_of_materials_id,
        controls_id,
        custom_segments_id,
        departmentslocationsclass_id,
        fields_id,
        forms_and_templates_id,
        formula_objects_id,
        groups_id,
        integration_objects_id,
        inventory_numbers_id,
        lists_id,
        mass_updates_id,
        netsuite_setup_and_preferen_id,
        nonmanaged_bundle_deploymen_id,
        records_id,
        require_subsidiary_process_ap,
        scripted_objects_id,
        searches_and_reports_id,
        subsidiaries_id,
        user_role_assignments_id,
        user_roles_id,
        workflows_and_related_objec_id

    from source

)

select * from renamed
