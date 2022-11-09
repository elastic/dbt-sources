
with source as (

    select * from {{ source('raw_salesforce', 'pse_transaction_c_history') }}

),

renamed as (

    select
        partitiontime,
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
        pse_amount_c,
        pse_budget_c,
        pse_category_c,
        pse_effective_date_c,
        pse_expense_c,
        pse_group_c,
        pse_group_currency_code_c,
        pse_group_currency_exchange_rate_c,
        pse_hours_c,
        pse_is_billed_c,
        pse_is_cost_c,
        pse_is_expense_c,
        pse_is_invoiced_c,
        pse_is_revenue_c,
        pse_is_time_c,
        pse_milestone_c,
        pse_miscellaneous_adjustment_c,
        pse_overridden_group_c,
        pse_overridden_practice_c,
        pse_overridden_region_c,
        pse_practice_c,
        pse_practice_currency_code_c,
        pse_practice_currency_exchange_rate_c,
        pse_project_c,
        pse_project_currency_code_c,
        pse_project_currency_exchange_rate_c,
        pse_region_c,
        pse_region_currency_code_c,
        pse_region_currency_exchange_rate_c,
        pse_related_record_deleted_c,
        pse_related_record_id_c,
        pse_related_record_name_c,
        pse_resource_c,
        pse_resource_currency_code_c,
        pse_resource_currency_exchange_rate_c,
        pse_timecard_c,
        pse_type_c,
        system_modstamp,
        pse_related_record_c

    from source

)

select * from renamed
