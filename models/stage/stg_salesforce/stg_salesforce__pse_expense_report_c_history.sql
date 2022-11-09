
with source as (

    select * from {{ source('raw_salesforce', 'pse_expense_report_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_action_check_include_in_financials_c,
        pse_admin_global_edit_c,
        pse_approved_c,
        pse_approver_c,
        pse_assignment_c,
        pse_audit_notes_c,
        pse_audit_notes_history_c,
        pse_billable_c,
        pse_billed_c,
        pse_description_c,
        pse_disable_approval_auto_submit_c,
        pse_exclude_from_billing_c,
        pse_expense_report_reference_c,
        pse_first_expense_date_c,
        pse_include_in_financials_c,
        pse_invoiced_c,
        pse_last_expense_date_c,
        pse_milestone_c,
        pse_override_group_c,
        pse_override_practice_c,
        pse_override_region_c,
        pse_project_c,
        pse_project_expense_notes_c,
        pse_project_methodology_c,
        pse_project_phase_c,
        pse_reimbursement_currency_c,
        pse_resource_c,
        pse_status_c,
        pse_submitted_c,
        pse_third_party_expenses_app_report_id_c,
        pse_total_billable_amount_c,
        pse_total_non_billable_amount_c,
        pse_total_reimbursement_amount_c,
        system_modstamp,
        psaws_is_resource_current_user_c

    from source

)

select * from renamed
