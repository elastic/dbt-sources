
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_price_condition_c_history') }}

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
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        sbqq_field_c,
        sbqq_filter_formula_c,
        sbqq_filter_type_c,
        sbqq_filter_variable_c,
        sbqq_index_c,
        sbqq_object_c,
        sbqq_operator_c,
        sbqq_rule_c,
        sbqq_tested_formula_c,
        sbqq_tested_variable_c,
        sbqq_value_c,
        system_modstamp,
        sbqq_parent_rule_is_active_c,
        sbqq_rule_targets_calculator_c

    from source

)

select * from renamed
