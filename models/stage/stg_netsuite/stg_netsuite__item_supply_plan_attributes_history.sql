
with source as (

    select * from {{ source('raw_netsuite', 'item_supply_plan_attributes_history') }}

),

renamed as (

    select
        demand_source,
        end_date,
        item_supply_plan_id,
        lead_time,
        quantity_on_hand,
        safety_stock,
        start_date

    from source

)

select * from renamed
