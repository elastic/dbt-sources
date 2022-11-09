
with source as (

    select * from {{ source('raw_netsuite_sa', 'revenue_event') }}

),

renamed as (

    select
        revenue_event_id,
        _fivetran_deleted,
        _fivetran_synced,
        amount_cancelled_current_mont,
        amount_forfeited,
        amount_ondemand,
        amount_percent_complete_cumul,
        amount_percent_complete_curre,
        amount_pp_consumed_current_cu,
        amount_pp_consumed_current_mo,
        amount_prepaid,
        amount_prepaid_remaining,
        calculated_rpo_pre_tpa_amt_ec,
        calculated_rpo_pre_tpa_ecu_co,
        cloud_account_id,
        cloud_id_updated,
        contract_end_date,
        contract_start_date,
        currency_id,
        customer_id,
        date_created,
        date_deleted,
        ecu_cancelled_current_month,
        ecu_forfeited,
        ecu_ondemand,
        ecu_percent_complete_cumulati,
        ecu_percent_complete_current_,
        ecu_pp_consumed_cumulative,
        ecu_pp_consumed_current_month,
        ecu_remaining,
        ecu_total_prepaid,
        is_inactive,
        last_modified_date,
        ns_order_line_id,
        on_demand_discount_percent,
        on_demand_order,
        ondemand_type_id,
        order_date,
        parent_id,
        percent_of_list_price,
        period_id,
        revenue_event_extid,
        rpo_pre_tpa_ecu_count,
        sales_order_id,
        sfdc_order_line_id,
        subsidiary_id,
        summarized,
        usage_end_date,
        usage_start_date,
        ecu_quantity_provisioned,
        line_item_end,
        line_item_start,
        organization_id,
        amount_prepaid_remaining_befo,
        cloud_line_item_id,
        ecu_remaining_before_cancella

    from source

)

select * from renamed
