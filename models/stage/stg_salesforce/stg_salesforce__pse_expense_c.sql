
with source as (

    select * from {{ source('raw_salesforce', 'pse_expense_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_exp_revenue_recognition_completed_c,
        ffrrtemplate_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_admin_global_edit_c,
        pse_amount_c,
        pse_amount_to_bill_c,
        pse_amount_to_reimburse_c,
        pse_applied_expense_rate_c,
        pse_approved_c,
        pse_approved_for_billing_c,
        pse_approved_for_vendor_payment_c,
        pse_assignment_c,
        pse_attachments_moved_to_er_c,
        pse_audit_notes_c,
        pse_audit_notes_history_c,
        pse_bill_date_c,
        pse_bill_transaction_c,
        pse_billable_amount_c,
        pse_billable_c,
        pse_billable_fee_flat_amount_c,
        pse_billable_fee_flat_c,
        pse_billable_fee_percentage_c,
        pse_billed_c,
        pse_billing_amount_c,
        pse_billing_amount_pre_fee_subtotal_c,
        pse_billing_currency_c,
        pse_billing_event_c,
        pse_billing_event_invoiced_c,
        pse_billing_event_item_c,
        pse_billing_event_released_c,
        pse_billing_event_status_c,
        pse_billing_hold_c,
        pse_cost_transaction_c,
        pse_description_c,
        pse_distance_c,
        pse_eligible_for_billing_c,
        pse_exchange_rate_billing_currency_c,
        pse_exchange_rate_incurred_currency_c,
        pse_exchange_rate_reimbursement_currency_c,
        pse_exchange_rate_resource_defined_c,
        pse_exclude_from_billing_c,
        pse_expense_date_c,
        pse_expense_report_c,
        pse_expense_split_parent_c,
        pse_include_in_financials_c,
        pse_incurred_tax_c,
        pse_incurred_tax_non_billable_c,
        pse_invoice_date_c,
        pse_invoice_number_c,
        pse_invoice_transaction_c,
        pse_invoiced_c,
        pse_lost_receipt_c,
        pse_milestone_c,
        pse_mobile_expense_reference_id_c,
        pse_non_billable_amount_c,
        pse_non_billable_incurred_amount_c,
        pse_non_billable_incurred_subtotal_c,
        pse_non_reimbursible_c,
        pse_notes_c,
        pse_override_group_c,
        pse_override_group_currency_code_c,
        pse_override_practice_c,
        pse_override_practice_currency_code_c,
        pse_override_rate_billing_currency_c,
        pse_override_rate_incurred_currency_c,
        pse_override_rate_reimbursement_currency_c,
        pse_override_region_c,
        pse_override_region_currency_code_c,
        pse_project_c,
        pse_project_methodology_c,
        pse_project_phase_c,
        pse_rate_unit_c,
        pse_recognition_method_c,
        pse_reimbursement_amount_c,
        pse_reimbursement_amount_in_project_currency_c,
        pse_reimbursement_currency_c,
        pse_resource_c,
        pse_revenue_transaction_c,
        pse_split_expense_c,
        pse_split_notes_c,
        pse_status_c,
        pse_submitted_c,
        pse_synchronous_update_required_c,
        pse_tax_type_c,
        pse_third_party_expenses_app_expense_id_c,
        pse_type_c,
        pse_vendor_invoice_item_c,
        system_modstamp

    from source

)

select * from renamed
