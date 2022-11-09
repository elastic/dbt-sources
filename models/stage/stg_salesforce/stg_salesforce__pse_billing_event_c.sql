
with source as (

    select * from {{ source('raw_salesforce', 'pse_billing_event_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_approver_c,
        pse_billing_contact_c,
        pse_billing_event_batch_c,
        pse_billing_event_calculation_c,
        pse_date_c,
        pse_event_key_c,
        pse_invoice_date_c,
        pse_invoice_number_c,
        pse_invoiced_c,
        pse_is_approved_c,
        pse_is_released_c,
        pse_project_c,
        pse_rounded_summary_amount_c,
        pse_skip_sync_check_c,
        pse_status_c,
        pse_summary_amount_c,
        system_modstamp,
        pse_budget_remaining_c,
        psaws_billing_event_stage_c

    from source

)

select * from renamed
