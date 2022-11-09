
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_demand_plan_lines') }}

),

renamed as (

    select
        item_demand_plan_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        demand_date,
        quantity

    from source

)

select * from renamed
