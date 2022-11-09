
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_product_action_c_history') }}

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
        sbqq_filter_field_c,
        sbqq_filter_value_c,
        sbqq_operator_c,
        sbqq_parent_rule_is_active_c,
        sbqq_product_c,
        sbqq_required_c,
        sbqq_rule_c,
        sbqq_type_c,
        sbqq_value_attribute_c,
        sbqq_value_field_c,
        sbqq_value_object_c,
        system_modstamp

    from source

)

select * from renamed
