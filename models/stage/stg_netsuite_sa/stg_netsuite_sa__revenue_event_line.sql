
with source as (

    select * from {{ source('raw_netsuite_sa', 'revenue_event_line') }}

),

renamed as (

    select
        revenue_event_line_id,
        _fivetran_deleted,
        _fivetran_synced,
        amount_cancelled,
        amount_consumed,
        amount_forfeited,
        contract_ecu_count,
        custom_integration_revenue_id,
        date_created,
        date_deleted,
        ecu_cancelled,
        ecu_consumed,
        ecu_forfeited,
        ecu_remaining,
        initial_revenue_line,
        is_inactive,
        last_modified_date,
        needs_to_run_summary,
        on_demand_amount,
        on_demand_discount_percent,
        on_demand_ecus,
        on_demand_order,
        ondemand_type_id,
        parent_id,
        revenue_event_id,
        revenue_event_line_extid,
        rpo_ecu_amount,
        rpo_ecu_count,
        usage_end_date,
        usage_start_date,
        line_item_end,
        line_item_start,
        organization_id,
        cloud_line_item_id,
        run_cancel_job

    from source

)

select * from renamed
