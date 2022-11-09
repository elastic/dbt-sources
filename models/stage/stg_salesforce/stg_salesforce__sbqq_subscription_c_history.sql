
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_subscription_c_history') }}

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
        sbqq_additional_discount_amount_c,
        sbqq_billing_frequency_c,
        sbqq_billing_type_c,
        sbqq_bundle_c,
        sbqq_bundled_c,
        sbqq_bundled_quantity_c,
        sbqq_charge_type_c,
        sbqq_component_discounted_by_package_c,
        sbqq_component_subscription_scope_c,
        sbqq_contract_c,
        sbqq_contract_number_c,
        sbqq_credit_product_id_c,
        sbqq_customer_price_c,
        sbqq_dimension_c,
        sbqq_dimension_type_c,
        sbqq_discount_c,
        sbqq_discount_schedule_c,
        sbqq_discount_schedule_type_c,
        sbqq_distributor_discount_c,
        sbqq_dynamic_option_id_c,
        sbqq_end_date_c,
        sbqq_list_price_c,
        sbqq_markup_amount_c,
        sbqq_markup_rate_c,
        sbqq_net_price_c,
        sbqq_number_c,
        sbqq_option_discount_amount_c,
        sbqq_option_discount_c,
        sbqq_option_level_c,
        sbqq_option_type_c,
        sbqq_order_product_c,
        sbqq_original_quote_line_c,
        sbqq_original_unit_cost_c,
        sbqq_partner_discount_c,
        sbqq_pricing_method_c,
        sbqq_product_c,
        sbqq_product_id_c,
        sbqq_product_name_c,
        sbqq_product_option_c,
        sbqq_prorate_multiplier_c,
        sbqq_quantity_c,
        sbqq_quote_line_c,
        sbqq_regular_price_c,
        sbqq_renewal_price_c,
        sbqq_renewal_product_id_c,
        sbqq_renewal_product_option_id_c,
        sbqq_renewal_product_option_product_id_c,
        sbqq_renewal_product_option_subscription_pricing_c,
        sbqq_renewal_quantity_c,
        sbqq_renewal_uplift_rate_c,
        sbqq_renewed_date_c,
        sbqq_required_by_id_c,
        sbqq_required_by_product_c,
        sbqq_revised_subscription_c,
        sbqq_root_id_c,
        sbqq_segment_end_date_c,
        sbqq_segment_index_c,
        sbqq_segment_key_c,
        sbqq_segment_label_c,
        sbqq_segment_quantity_c,
        sbqq_segment_start_date_c,
        sbqq_segment_uplift_amount_c,
        sbqq_segment_uplift_c,
        sbqq_special_price_c,
        sbqq_start_date_c,
        sbqq_subscription_end_date_c,
        sbqq_subscription_start_date_c,
        sbqq_term_discount_schedule_c,
        sbqq_terminated_date_c,
        sbqq_unit_cost_c,
        system_modstamp,
        close_out_subscription_c,
        current_quantity_c,
        exit_ren_c,
        group_project_name_c,
        original_quote_line_group_id_c,
        qlg_name_c,
        renewal_base_c,
        sbqq_has_consumption_schedule_c,
        sbqq_package_product_code_c,
        sbqq_package_product_description_c,
        sbqq_product_subscription_type_c,
        sbqq_subscription_pricing_c,
        sbqq_subscription_type_c,
        subscription_custom_ref_c,
        subscription_original_end_date_c,
        subscription_original_quantity_c,
        subscription_original_start_date_c

    from source

)

select * from renamed
