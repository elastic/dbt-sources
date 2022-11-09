
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_summary_variable_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        sbqq_aggregate_field_c,
        sbqq_aggregate_function_c,
        sbqq_combine_with_c,
        sbqq_composite_operator_c,
        sbqq_constraint_field_c,
        sbqq_filter_field_c,
        sbqq_filter_value_c,
        sbqq_operator_c,
        sbqq_scope_c,
        sbqq_target_object_c,
        sbqq_value_element_c,
        system_modstamp

    from source

)

select * from renamed
