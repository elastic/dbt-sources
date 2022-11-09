
with source as (

    select * from {{ source('raw_netsuite', 'item_location_map') }}

),

renamed as (

    select
        atp_lead_time,
        available_count,
        avatax_taxcode,
        average_cost,
        backward_consumption_days,
        billings_account_id,
        billings_discount_account_id,
        capacity_id,
        code_of_supply_id,
        commodity_code,
        cost_0,
        cost_accounting_status,
        costing_lot_size,
        custom_sku,
        default_return_cost,
        demand_source,
        demand_time_fence,
        do_not_sync_to_salesforce,
        docebo_course_id,
        elastic_cloud_item_id,
        elastic_cloud_item_type_id,
        embedded_quantity,
        end_of_life_date,
        end_of_ms_date,
        exempt_from_billing_script,
        fixed_lot_size,
        forward_consumption_days,
        ha_id,
        in_transit_count,
        inventory_cost_template,
        invt_count_classification,
        invt_count_interval,
        item_category_id,
        item_id,
        last_invt_count_date,
        last_purchase_price,
        location_id,
        lot_sizing_method,
        maintenancesupport_type_id,
        maximum_quantity_hidden,
        mpn,
        ms_pricing_option_id,
        n_606_revenue_account_id,
        n_606_st_dr_account_id,
        n_606lt_dr_account_id,
        nature_of_transaction_codes_id,
        next_invt_count_date,
        node_count,
        ns_lead_time,
        on_hand_count,
        on_hand_value,
        on_order_count,
        optout_ms,
        periodic_lot_size_days,
        periodic_lot_size_type,
        planned_hours,
        pref_stock_level,
        product_category_id,
        product_family_id,
        product_family_v2_id,
        product_line_id,
        product_type_id,
        quantity_cap_hidden_id,
        quantity_type_id,
        quantitybackordered,
        region_id,
        related_found_standard_item_id,
        renew_with_id,
        renewals_exclusion,
        reorder_point,
        replaced_with_id,
        reschedule_in_days,
        reschedule_out_days,
        rev_rec_end_date,
        rev_rec_start_date,
        safety_stock_level,
        ssd_id,
        ssp_category_id,
        ssp_family_id,
        subject_to_allocation,
        supplementary_unit__abberviat,
        supplementary_unit_id,
        supply_time_fence,
        supply_type,
        term__contract_pricing_type_id,
        training_event_id,
        type_of_goods_id,
        udf1,
        udf2,
        un_number,
        volume_discounted_in_quoting,
        wip

    from source

)

select * from renamed
