
with source as (

    select * from {{ source('raw_netsuite', 'customer_currencies') }}

),

renamed as (

    select
        currency_id,
        customer_id,
        deposit_balance_foreign,
        openbalance_foreign,
        unbilled_orders_foreign

    from source

)

select * from renamed
