
with source as (

    select * from {{ source('raw_salesforce', 'pse_vendor_invoice_item_c') }}

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
        pse_account_currency_c,
        pse_action_recalc_vendor_currency_amount_c,
        pse_amount_c,
        pse_budget_header_c,
        pse_date_c,
        pse_description_c,
        pse_expense_c,
        pse_item_exchange_rate_override_c,
        pse_milestone_c,
        pse_miscellaneous_adjustment_c,
        pse_override_item_exchange_rate_c,
        pse_project_c,
        pse_project_currency_exchange_rate_c,
        pse_quantity_c,
        pse_resource_c,
        pse_timecard_c,
        pse_unit_price_c,
        pse_vendor_currency_amount_c,
        pse_vendor_currency_amount_number_c,
        pse_vendor_currency_c,
        pse_vendor_currency_exchange_rate_c,
        pse_vendor_invoice_c,
        pse_vendor_invoice_er_override_applied_c,
        system_modstamp

    from source

)

select * from renamed
