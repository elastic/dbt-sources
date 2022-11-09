
with source as (

    select * from {{ source('raw_salesforce', 'pse_vendor_invoice_c_history') }}

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
        pse_account_c,
        pse_account_currency_c,
        pse_action_recalc_vendor_currency_amount_c,
        pse_approved_for_payment_c,
        pse_date_c,
        pse_description_c,
        pse_first_item_date_c,
        pse_invoice_number_c,
        pse_last_item_date_c,
        pse_override_vendor_invoice_exchange_rate_c,
        pse_po_wo_number_c,
        pse_sfdc_vat_c,
        pse_status_c,
        pse_submitted_c,
        pse_target_payment_date_c,
        pse_total_c,
        pse_vendor_currency_c,
        pse_vendor_currency_total_c,
        pse_vendor_currency_total_number_c,
        pse_vendor_invoice_exchange_rate_override_c,
        pse_vendor_vat_c,
        system_modstamp

    from source

)

select * from renamed
