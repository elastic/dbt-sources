
with source as (

    select * from {{ source('raw_netsuite', 'customer_group_pricing') }}

),

renamed as (

    select
        customer_id,
        price_type_id,
        pricing_group_id

    from source

)

select * from renamed
