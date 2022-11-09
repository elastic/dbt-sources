
with source as (

    select * from {{ source('raw_netsuite_sa', 'process_issue_history') }}

),

renamed as (

    select
        process_issue_id,
        _fivetran_deleted,
        _fivetran_synced,
        approval_status_id,
        approver_id,
        assigned_id,
        auditor_assigned,
        control_count,
        control_id,
        date_created,
        date_deleted,
        department_id,
        effort_required,
        entity_id,
        external_audit_comments,
        external_audit_status_id,
        external_ticket_link,
        external_ticket_number,
        internal_audit_comments,
        internal_audit_status_id,
        is_inactive,
        issue_description,
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
        type_id,
        respider_done_flag,
        do_not_respider_automatically,
        proposed_customizations,
        partition_date

    from source

)

select * from renamed
