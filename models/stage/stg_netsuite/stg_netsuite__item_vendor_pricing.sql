
with source as (

    select * from {{ source('raw_netsuite', 'item_vendor_pricing') }}

),

renamed as (

    select
        cost_0,
        cost_is_percentage,
        currency_id,
        item_id,
        subsidiary_id,
        vendor_id

    from source

)

select * from renamed
