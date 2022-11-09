
with source as (

    select * from {{ source('raw_netsuite', 'price_plans') }}

),

renamed as (

    select
        currency,
        date_created,
        included_quantity,
        price_plan_extid,
        price_plan_id,
        price_plan_type

    from source

)

select * from renamed
