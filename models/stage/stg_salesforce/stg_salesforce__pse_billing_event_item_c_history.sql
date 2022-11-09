
with source as (

    select * from {{ source('raw_salesforce', 'pse_billing_event_item_c_history') }}

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
        name,
        owner_id,
        pse_amount_c,
        pse_billing_event_batch_c,
        pse_billing_event_c,
        pse_billing_event_calculation_c,
        pse_budget_c,
        pse_category_c,
        pse_date_c,
        pse_description_c,
        pse_expense_c,
        pse_milestone_c,
        pse_miscellaneous_adjustment_c,
        pse_object_id_c,
        pse_project_c,
        pse_quantity_c,
        pse_rounded_amount_c,
        pse_subcategory_c,
        pse_timecard_split_c,
        pse_unit_price_c,
        system_modstamp,
        pse_invoiced_c,
        pse_is_released_c,
        pse_product_service_c,
        pse_summary_c

    from source

)

select * from renamed
