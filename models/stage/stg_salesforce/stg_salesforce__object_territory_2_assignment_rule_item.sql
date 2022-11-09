
with source as (

    select * from {{ source('raw_salesforce', 'object_territory_2_assignment_rule_item') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        field,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        operation,
        rule_id,
        sort_order,
        system_modstamp,
        value,
        _fivetran_deleted

    from source

)

select * from renamed
