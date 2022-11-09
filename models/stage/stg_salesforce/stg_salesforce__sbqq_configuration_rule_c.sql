
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_configuration_rule_c') }}

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
        sbqq_active_c,
        sbqq_ascending_nested_level_c,
        sbqq_descending_action_nesting_c,
        sbqq_descending_nested_level_c,
        sbqq_product_c,
        sbqq_product_feature_c,
        sbqq_product_rule_c,
        sbqq_rule_evaluation_event_c,
        sbqq_rule_type_c,
        system_modstamp

    from source

)

select * from renamed
