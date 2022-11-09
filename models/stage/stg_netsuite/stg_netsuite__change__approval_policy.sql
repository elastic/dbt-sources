
with source as (

    select * from {{ source('raw_netsuite', 'change__approval_policy') }}

),

renamed as (

    select
        accounting_lists_id,
        bill_of_materials_id,
        change__approval_policy_extid,
        change__approval_policy_id,
        change__approval_policy_name,
        control_assignee_approval,
        control_owner,
        controls_id,
        custom_segments_id,
        date_created,
        default_policy,
        departmentslocationsclass_id,
        executive_approver_id,
        fields_id,
        final_approver_id,
        final_approver_policy_chang_id,
        forms_and_templates_id,
        formula_objects_id,
        groups_id,
        include_process_editors_as_al,
        integration_objects_id,
        inventory_numbers_id,
        is_inactive,
        last_modified_date,
        lists_id,
        log_xml_only_change,
        mass_updates_id,
        max__of__approvals_required,
        merge_approval_lists,
        netsuite_setup_and_preferen_id,
        no_order_required,
        nonconf_change_customization_,
        nonconforming_change_process_,
        nonmanaged_bundle_deploymen_id,
        other_changes_id,
        parent_id,
        parent_policy_id,
        preliminary_approver_policy_id,
        preliminary_approvers_id,
        process_owners,
        records_id,
        require_affected_customizatio,
        require_affected_process_appr,
        require_impacted_customizatio,
        require_parent_process_owner_,
        require_related_process_appro,
        require_subsidiary_process_ap,
        scripted_objects_id,
        searches_and_reports_id,
        sequential_approval_requests,
        subsidiaries_id,
        subsidiary,
        update_child_policies,
        user_role_assignments_id,
        user_role_related_objects_id,
        user_roles_id,
        webrelated_changes_id,
        workflows_and_related_objec_id

    from source

)

select * from renamed
