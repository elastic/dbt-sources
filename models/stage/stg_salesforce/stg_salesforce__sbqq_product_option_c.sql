
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_product_option_c') }}

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
        sbqq_applied_immediately_c,
        sbqq_applied_immediately_context_c,
        sbqq_bundled_c,
        sbqq_component_code_c,
        sbqq_component_code_position_c,
        sbqq_component_description_c,
        sbqq_component_description_position_c,
        sbqq_configured_sku_c,
        sbqq_default_pricing_table_c,
        sbqq_discount_amount_c,
        sbqq_discount_c,
        sbqq_discount_schedule_c,
        sbqq_discounted_by_package_c,
        sbqq_existing_quantity_c,
        sbqq_feature_c,
        sbqq_max_quantity_c,
        sbqq_min_quantity_c,
        sbqq_number_c,
        sbqq_optional_sku_c,
        sbqq_quantity_c,
        sbqq_quantity_editable_c,
        sbqq_quote_line_visibility_c,
        sbqq_renewal_product_option_c,
        sbqq_required_c,
        sbqq_selected_c,
        sbqq_subscription_scope_c,
        sbqq_system_c,
        sbqq_type_c,
        sbqq_unit_price_c,
        sbqq_uplifted_by_package_c,
        system_modstamp,
        sbqq_price_editable_c,
        sbqq_product_code_c,
        sbqq_product_configuration_type_c,
        sbqq_product_description_c,
        sbqq_product_family_c,
        sbqq_product_name_c,
        sbqq_product_quantity_scale_c,
        sbqq_product_subscription_pricing_c

    from source

)

select * from renamed
