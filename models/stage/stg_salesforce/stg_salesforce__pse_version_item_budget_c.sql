
with source as (

    select * from {{ source('raw_salesforce', 'pse_version_item_budget_c') }}

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
        name,
        pse_account_id_c,
        pse_account_name_c,
        pse_amount_c,
        pse_approved_c,
        pse_billable_c,
        pse_billed_c,
        pse_budget_name_c,
        pse_effective_date_c,
        pse_expense_amount_c,
        pse_include_in_financials_c,
        pse_invoiced_c,
        pse_opportunity_id_c,
        pse_opportunity_name_c,
        pse_original_created_by_id_c,
        pse_original_created_by_name_c,
        pse_original_created_date_c,
        pse_original_id_c,
        pse_original_last_modified_by_id_c,
        pse_original_last_modified_by_name_c,
        pse_original_last_modified_date_c,
        pse_original_owner_id_c,
        pse_original_owner_name_c,
        pse_status_c,
        pse_total_amount_c,
        pse_transaction_id_c,
        pse_transaction_name_c,
        pse_type_c,
        pse_version_c,
        system_modstamp

    from source

)

select * from renamed
