
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_product_feature_c_history') }}

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
        sbqq_category_c,
        sbqq_configuration_field_set_c,
        sbqq_configured_sku_c,
        sbqq_discount_schedule_c,
        sbqq_dynamic_product_filter_field_set_c,
        sbqq_dynamic_product_lookup_field_set_c,
        sbqq_max_option_count_c,
        sbqq_min_option_count_c,
        sbqq_number_c,
        sbqq_option_selection_method_c,
        system_modstamp

    from source

)

select * from renamed
