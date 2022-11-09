
with source as (

    select * from {{ source('raw_netsuite', 'item_supply_plan_source_types') }}

),

renamed as (

    select
        name,
        type_id

    from source

)

select * from renamed
