
with source as (

    select * from {{ source('raw_salesforce', 'action_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
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
        required_c,
        rule_c,
        score_change_c,
        system_modstamp,
        type_c,
        value_field_c,
        value_object_c

    from source

)

select * from renamed
