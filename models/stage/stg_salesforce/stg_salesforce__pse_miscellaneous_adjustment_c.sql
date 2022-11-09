
with source as (

    select * from {{ source('raw_salesforce', 'pse_miscellaneous_adjustment_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_admin_global_edit_c,
        pse_amount_c,
        pse_approved_c,
        pse_approved_for_billing_c,
        pse_approved_for_vendor_payment_c,
        pse_approver_c,
        pse_audit_notes_c,
        pse_bill_date_c,
        pse_bill_transaction_c,
        pse_billed_c,
        pse_billing_event_c,
        pse_billing_event_invoiced_c,
        pse_billing_event_item_c,
        pse_billing_event_released_c,
        pse_billing_event_status_c,
        pse_billing_hold_c,
        pse_description_c,
        pse_effective_date_c,
        pse_eligible_for_billing_c,
        pse_exclude_from_billing_c,
        pse_include_in_financials_c,
        pse_invoice_date_c,
        pse_invoice_number_c,
        pse_invoice_transaction_c,
        pse_invoiced_c,
        pse_override_project_group_c,
        pse_override_project_group_currency_code_c,
        pse_override_project_practice_c,
        pse_override_project_practice_currency_code_c,
        pse_override_project_region_c,
        pse_override_project_region_currency_code_c,
        pse_project_c,
        pse_recognition_method_c,
        pse_status_c,
        pse_transaction_c,
        pse_transaction_category_c,
        pse_vendor_account_c,
        pse_vendor_invoice_item_c,
        system_modstamp

    from source

)

select * from renamed
