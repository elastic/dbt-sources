
with source as (

    select * from {{ source('raw_netsuite', 'process_issue') }}

),

renamed as (

    select
        approval_status_id,
        approver_id,
        assigned_id,
        auditor_assigned,
        control_count,
        control_id,
        date_created,
        department_id,
        effort_required,
        entity_id,
        external_audit_comments,
        external_audit_status_id,
        external_ticket_link,
        external_ticket_number,
        internal_audit_comments,
        internal_audit_status_id,
        issue_description,
        is_inactive,
        last_external_audit_id,
        last_internal_audit_id,
        last_modified_date,
        location_id,
        map_to_customization,
        number_0,
        originating_url,
        parent_change_request_id,
        parent_id,
        parent_issue_id,
        process_id,
        process_issue_extid,
        process_issue_id,
        process_issue_name,
        process_issue_number,
        project_id,
        related_test_id,
        request_process_help,
        sampled_for_audit_id,
        severity_id,
        source_0,
        status_id,
        target_resolution_date,
        test_id,
        transaction_id,
        type_id

    from source

)

select * from renamed