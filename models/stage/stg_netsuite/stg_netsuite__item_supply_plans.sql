
with source as (

    select * from {{ source('raw_netsuite', 'item_supply_plans') }}

),

renamed as (

    select
        create_date,
        date_last_modified,
        item_id,
        item_supply_plan_id,
        last_modified_date,
        location_id,
        memo,
        subsidiary_id

    from source

)

select * from renamed
