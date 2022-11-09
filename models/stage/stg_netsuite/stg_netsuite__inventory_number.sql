
with source as (

    select * from {{ source('raw_netsuite', 'inventory_number') }}

),

renamed as (

    select
        available_count,
        avatax_taxcode,
        billings_account_id,
        billings_discount_account_id,
        capacity_id,
        code_of_supply_id,
        commodity_code,
        custom_sku,
        date_last_modified,
        do_not_sync_to_salesforce,
        docebo_course_id,
        elastic_cloud_item_id,
        elastic_cloud_item_type_id,
        embedded_quantity,
        end_of_life_date,
        end_of_ms_date,
        exempt_from_billing_script,
        expiration_date,
        ha_id,
        in_transit_count,
        inventory_number,
        inventory_number_id,
        item_category_id,
        item_id,
        location_id,
        maintenancesupport_type_id,
        maximum_quantity_hidden,
        memo,
        mpn,
        ms_pricing_option_id,
        n_606_revenue_account_id,
        n_606_st_dr_account_id,
        n_606lt_dr_account_id,
        nature_of_transaction_codes_id,
        node_count,
        number_type,
        on_hand_count,
        on_order_count,
        optout_ms,
        planned_hours,
        product_category_id,
        product_family_id,
        product_family_v2_id,
        product_line_id,
        product_type_id,
        quantity_cap_hidden_id,
        quantity_type_id,
        region_id,
        related_found_standard_item_id,
        renew_with_id,
        renewals_exclusion,
        replaced_with_id,
        rev_rec_end_date,
        rev_rec_start_date,
        ssd_id,
        ssp_category_id,
        ssp_family_id,
        subject_to_allocation,
        supplementary_unit__abberviat,
        supplementary_unit_id,
        term__contract_pricing_type_id,
        training_event_id,
        type_of_goods_id,
        udf1,
        udf2,
        un_number,
        volume_discounted_in_quoting

    from source

)

select * from renamed
