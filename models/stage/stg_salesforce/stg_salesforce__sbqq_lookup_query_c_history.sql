
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_lookup_query_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        sbqq_lookup_field_c,
        sbqq_match_type_c,
        sbqq_operator_c,
        sbqq_price_rule_2_c,
        sbqq_price_rule_c,
        sbqq_product_rule_c,
        sbqq_tested_configuration_attribute_c,
        sbqq_tested_field_c,
        sbqq_tested_object_c,
        sbqq_tested_value_c,
        system_modstamp,
        sbqq_parent_rule_is_active_c,
        sbqq_rule_lookup_object_c,
        sbqq_rule_targets_calculator_c

    from source

)

select * from renamed
