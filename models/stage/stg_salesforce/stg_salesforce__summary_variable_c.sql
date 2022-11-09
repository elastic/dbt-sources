
with source as (

    select * from {{ source('raw_salesforce', 'summary_variable_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        aggregate_field_c,
        aggregate_function_c,
        combine_with_c,
        composite_operator_c,
        constraint_field_c,
        created_by_id,
        created_date,
        currency_iso_code,
        filter_field_c,
        filter_value_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        operator_c,
        owner_id,
        scope_c,
        system_modstamp,
        target_object_c,
        value_element_c

    from source

)

select * from renamed
