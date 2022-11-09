
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_web_quote_line_c') }}

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
        sbqq_additional_discount_amount_c,
        sbqq_additional_discount_c,
        sbqq_additional_quantity_c,
        sbqq_batch_quantity_c,
        sbqq_block_price_c,
        sbqq_bundle_c,
        sbqq_bundled_c,
        sbqq_bundled_quantity_c,
        sbqq_component_cost_c,
        sbqq_component_discounted_by_package_c,
        sbqq_component_list_total_c,
        sbqq_component_subscription_scope_c,
        sbqq_component_total_c,
        sbqq_component_uplifted_by_package_c,
        sbqq_component_visibility_c,
        sbqq_compound_discount_rate_c,
        sbqq_configuration_required_c,
        sbqq_contracted_price_c,
        sbqq_cost_c,
        sbqq_cost_editable_c,
        sbqq_customer_price_c,
        sbqq_customer_total_c,
        sbqq_default_subscription_term_c,
        sbqq_description_c,
        sbqq_dimension_c,
        sbqq_discount_c,
        sbqq_discount_schedule_c,
        sbqq_discount_schedule_type_c,
        sbqq_discount_tier_c,
        sbqq_distributor_discount_c,
        sbqq_effective_end_date_c,
        sbqq_effective_quantity_c,
        sbqq_effective_start_date_c,
        sbqq_end_date_c,
        sbqq_existing_c,
        sbqq_gross_profit_c,
        sbqq_hidden_c,
        sbqq_incomplete_c,
        sbqq_list_price_c,
        sbqq_list_total_c,
        sbqq_markup_amount_c,
        sbqq_markup_c,
        sbqq_markup_rate_c,
        sbqq_maximum_price_c,
        sbqq_minimum_price_c,
        sbqq_net_price_c,
        sbqq_net_total_c,
        sbqq_non_discountable_c,
        sbqq_non_partner_discountable_c,
        sbqq_number_c,
        sbqq_option_discount_amount_c,
        sbqq_option_discount_c,
        sbqq_option_level_c,
        sbqq_option_type_c,
        sbqq_optional_c,
        sbqq_package_cost_c,
        sbqq_package_list_total_c,
        sbqq_package_product_code_c,
        sbqq_package_total_c,
        sbqq_partner_discount_c,
        sbqq_partner_price_c,
        sbqq_partner_total_c,
        sbqq_price_editable_c,
        sbqq_pricing_method_c,
        sbqq_pricing_method_editable_c,
        sbqq_prior_quantity_c,
        sbqq_product_c,
        sbqq_product_code_c,
        sbqq_product_family_c,
        sbqq_product_name_c,
        sbqq_product_option_c,
        sbqq_prorate_multiplier_c,
        sbqq_prorated_list_price_c,
        sbqq_prorated_price_c,
        sbqq_quantity_c,
        sbqq_quote_c,
        sbqq_regular_price_c,
        sbqq_regular_total_c,
        sbqq_renewal_c,
        sbqq_renewed_asset_c,
        sbqq_renewed_subscription_c,
        sbqq_required_by_c,
        sbqq_segment_index_c,
        sbqq_segment_key_c,
        sbqq_segment_label_c,
        sbqq_source_c,
        sbqq_special_price_c,
        sbqq_special_price_description_c,
        sbqq_special_price_type_c,
        sbqq_start_date_c,
        sbqq_subscribed_asset_ids_c,
        sbqq_subscription_base_c,
        sbqq_subscription_category_c,
        sbqq_subscription_percent_c,
        sbqq_subscription_pricing_c,
        sbqq_subscription_scope_c,
        sbqq_subscription_target_price_c,
        sbqq_subscription_term_c,
        sbqq_taxable_c,
        sbqq_term_discount_c,
        sbqq_term_discount_schedule_c,
        sbqq_term_discount_tier_c,
        sbqq_total_discount_amount_c,
        sbqq_unit_cost_c,
        sbqq_upgraded_asset_c,
        sbqq_upgraded_subscription_c,
        sbqq_uplift_amount_c,
        sbqq_uplift_c,
        sbqq_volume_discount_c,
        sbqqsc_contract_line_item_asset_ids_c,
        sbqqsc_renewed_contract_line_c,
        sbqqsc_upgraded_contract_line_c,
        system_modstamp

    from source

)

select * from renamed
