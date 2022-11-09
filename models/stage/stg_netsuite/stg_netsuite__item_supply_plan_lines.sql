
with source as (

    select * from {{ source('raw_netsuite', 'item_supply_plan_lines') }}

),

renamed as (

    select
        is_order_created,
        item_supply_plan_id,
        line_id,
        order_date,
        order_type,
        quantity,
        receipt_date,
        source_location_id

    from source

)

select * from renamed
