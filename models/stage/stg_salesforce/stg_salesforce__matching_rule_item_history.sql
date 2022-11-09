
with source as (

    select * from {{ source('raw_salesforce', 'matching_rule_item_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        blank_value_behavior,
        created_by_id,
        created_date,
        field,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        matching_method,
        matching_rule_id,
        sort_order,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
