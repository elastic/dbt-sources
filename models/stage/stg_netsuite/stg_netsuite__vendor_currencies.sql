
with source as (

    select * from {{ source('raw_netsuite', 'vendor_currencies') }}

),

renamed as (

    select
        currency_id,
        in_transit_balance_foreign,
        openbalance_foreign,
        unbilled_orders_foreign,
        vendor_id

    from source

)

select * from renamed
