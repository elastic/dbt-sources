
with source as (

    select * from {{ source('raw_netsuite', 'item_group_history') }}

),

renamed as (

    select
        bom_quantity,
        component_yield,
        effective_date,
        effective_revision,
        item_group_id,
        item_source,
        line_id,
        member_id,
        obsolete_date,
        obsolete_revision,
        parent_id,
        quantity,
        rate_plan_id

    from source

)

select * from renamed
