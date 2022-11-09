
with source as (

    select * from {{ source('raw_salesforce', 'pse_forecast_setup_category_c') }}

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
        owner_id,
        pse_billings_actuals_c,
        pse_expense_actuals_c,
        pse_forecast_setup_c,
        pse_label_c,
        pse_opportunities_c,
        pse_order_c,
        pse_ordinal_c,
        pse_scheduled_assignments_c,
        pse_scheduled_held_resource_requests_c,
        pse_scheduled_milestones_c,
        pse_scheduled_unheld_resource_requests_c,
        pse_unscheduled_backlog_c,
        system_modstamp

    from source

)

select * from renamed
