
with source as (

    select * from {{ source('raw_salesforce', 'pse_budget_header_c_history') }}

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
        pse_active_c,
        pse_amount_c,
        pse_amount_consumed_c,
        pse_amount_overrun_allowed_c,
        pse_amount_overrun_percentage_c,
        pse_amount_remaining_c,
        pse_expense_amount_c,
        pse_expense_amount_consumed_c,
        pse_expense_amount_overrun_allowed_c,
        pse_expense_amount_overrun_percentage_c,
        pse_expense_amount_remaining_c,
        pse_maximum_consumable_total_amount_c,
        pse_percent_total_amount_remaining_c,
        pse_project_c,
        pse_total_amount_c,
        pse_total_amount_consumed_c,
        pse_total_amount_overrun_allowed_c,
        pse_total_amount_overrun_percentage_c,
        pse_total_amount_remaining_c,
        pse_type_c,
        system_modstamp

    from source

)

select * from renamed
