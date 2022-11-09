
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_price_action_c') }}

),

renamed as (

    select
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
        sbqq_formula_c,
        sbqq_order_c,
        sbqq_rule_c,
        sbqq_source_lookup_field_c,
        sbqq_source_variable_c,
        sbqq_target_object_c,
        sbqq_value_c,
        sbqq_value_field_c,
        system_modstamp,
        sbqq_parent_rule_is_active_c,
        sbqq_rule_lookup_object_c,
        sbqq_rule_targets_calculator_c,
        last_viewed_date,
        last_referenced_date

    from source

)

select * from renamed
