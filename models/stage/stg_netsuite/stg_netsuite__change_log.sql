
with source as (

    select * from {{ source('raw_netsuite', 'change_log') }}

),

renamed as (

    select
        actual_change_date,
        actual_record_link,
        affected_user_role_customiz_id,
        auditor_assigned_deprecated,
        change_level,
        change_level_number_id,
        change_log_extid,
        change_log_id,
        change_overview_beta,
        change_type,
        change_type_reason,
        customization_id,
        data_error,
        data_process,
        date_created,
        diff_summary,
        direct_change,
        external_audit_comments,
        external_audit_status_id,
        external_auditor_assigned_id,
        field_name,
        field_script_id,
        flagged_for_audit_id,
        formatted_diff,
        internal_audit_comments,
        internal_audit_status_id,
        internal_auditor_assigned_id,
        is_inactive,
        last_external_audit_id,
        last_internal_audit_id,
        last_modified_date,
        log_origin_id,
        managed_bundle_update,
        new_value,
        noncompliance,
        nonmaterial_changes_by_code,
        nonmaterial_checked,
        nonmaterial_clearance_reason,
        nonproc,
        old_value,
        operation,
        originating_change_log_id,
        parent_change_log_id,
        parent_id,
        pending_process,
        policy_id,
        related_change_request_id,
        related_process_issue_id,
        resolution,
        resolution_description,
        retroactive_done,
        script,
        search_cleanup_rule_id,
        sod_blocking_incident_date,
        sod_rule_id,
        sod_violation_closed_by_id,
        sod_violation_closed_date,
        status_id,
        system_notes_available_beta,
        system_notes_checked,
        system_notes_date,
        user_code,
        user_id

    from source

)

select * from renamed
