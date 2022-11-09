
with source as (

    select * from {{ source('raw_netsuite', 'item_demand_plan_lines_history') }}

),

renamed as (

    select
        demand_date,
        item_demand_plan_id,
        quantity

    from source

)

select * from renamed
