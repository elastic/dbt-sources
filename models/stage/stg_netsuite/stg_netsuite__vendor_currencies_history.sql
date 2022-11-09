
with source as (

    select * from {{ source('raw_netsuite', 'vendor_currencies_history') }}

),

renamed as (

    select
        currency_id,
        openbalance_foreign,
        unbilled_orders_foreign,
        vendor_id,
        in_transit_balance_foreign

    from source

)

select * from renamed
