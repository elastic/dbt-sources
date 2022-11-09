
with source as (

    select * from {{ source('raw_salesforce', 'partner_type_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_type_c,
        category_1_base_discount_c,
        category_1_deal_source_discount_c,
        category_1_sales_value_discount_c,
        category_2_base_discount_c,
        category_2_deal_source_discount_c,
        category_2_sales_value_discount_c,
        category_3_base_discount_c,
        category_3_deal_source_discount_c,
        category_3_sales_value_discount_c,
        created_by_id,
        created_date,
        currency_iso_code,
        discount_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        partner_deal_source_discount_c,
        partner_value_add_discount_c,
        system_modstamp,
        category_1_partner_sourced_uplift_c,
        category_2_partner_sales_value_uplift_c,
        category_2_partner_sourced_uplift_c,
        category_2_partner_uplift_c,
        category_3_partner_sales_value_uplift_c,
        category_3_partner_sourced_uplift_c,
        category_3_partner_uplift_c,
        catergory_1_partner_sales_value_uplift_c,
        catergory_2_partner_sales_value_uplift_c,
        partner_uplift_c,
        bonus_c,
        contract_flows_down_t_c_s_c,
        additional_contract_terms_c

    from source

)

select * from renamed
