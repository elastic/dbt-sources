
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_price_schedule_c_history') }}

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
        name,
        owner_id,
        sbqq_account_c,
        sbqq_aggregation_scope_c,
        sbqq_constraint_field_c,
        sbqq_cross_orders_c,
        sbqq_cross_products_c,
        sbqq_description_c,
        sbqq_discount_unit_c,
        sbqq_excluded_pricebook_ids_c,
        sbqq_include_bundled_products_c,
        sbqq_order_c,
        sbqq_order_product_c,
        sbqq_original_discount_schedule_c,
        sbqq_override_behavior_c,
        sbqq_price_scale_c,
        sbqq_price_type_c,
        sbqq_pricebook_c,
        sbqq_product_c,
        sbqq_quote_c,
        sbqq_quote_line_c,
        sbqq_quote_line_quantity_field_c,
        sbqq_term_discount_c,
        sbqq_use_price_for_amount_c,
        sbqq_user_defined_c,
        system_modstamp

    from source

)

select * from renamed
