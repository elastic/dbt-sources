
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_supply_plan_attributes') }}

),

renamed as (

    select
        fivetran_index,
        item_supply_plan_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        demand_source,
        end_date,
        lead_time,
        quantity_on_hand,
        safety_stock,
        start_date

    from source

)

select * from renamed
