
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_quote_line_group_c') }}

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
        sbqq_account_c,
        sbqq_additional_discount_rate_c,
        sbqq_billing_frequency_c,
        sbqq_customer_total_c,
        sbqq_description_c,
        sbqq_end_date_c,
        sbqq_favorite_c,
        sbqq_list_total_c,
        sbqq_markup_rate_c,
        sbqq_net_total_c,
        sbqq_number_c,
        sbqq_optional_c,
        sbqq_quote_c,
        sbqq_quote_process_c,
        sbqq_separate_contract_c,
        sbqq_solution_group_c,
        sbqq_source_c,
        sbqq_start_date_c,
        sbqq_subscription_term_c,
        sbqq_target_customer_amount_c,
        system_modstamp,
        node_count_c,
        license_type_read_only_c,
        license_type_c,
        subscription_name_c,
        subscription_c,
        original_quote_line_group_c,
        node_count_read_only_c,
        max_node_count_override_c,
        support_level_c,
        support_level_read_only_c,
        node_count_2_c,
        cloud_support_level_formula_c,
        qlguniqui_id_c,
        node_count_for_approval_c,
        has_debook_c

    from source

)

select * from renamed
