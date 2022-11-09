
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_error_condition_c') }}

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
        sbqq_filter_type_c,
        sbqq_filter_value_c,
        sbqq_filter_variable_c,
        sbqq_index_c,
        sbqq_operator_c,
        sbqq_rule_c,
        sbqq_tested_attribute_c,
        sbqq_tested_field_c,
        sbqq_tested_object_c,
        sbqq_tested_variable_c,
        system_modstamp,
        sbqq_parent_rule_is_active_c,
        sbqq_rule_targets_quote_c,
        last_viewed_date,
        last_referenced_date

    from source

)

select * from renamed
