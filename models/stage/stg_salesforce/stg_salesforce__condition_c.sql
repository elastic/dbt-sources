
with source as (

    select * from {{ source('raw_salesforce', 'condition_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        external_id_c,
        field_c,
        filter_type_c,
        filter_value_c,
        filter_variable_c,
        index_c,
        is_child_object_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        object_c,
        operator_c,
        rule_c,
        system_modstamp,
        variable_c,
        rule_object_c,
        parent_rule_is_active_c

    from source

)

select * from renamed
