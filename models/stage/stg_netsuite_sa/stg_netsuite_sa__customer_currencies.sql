
with source as (

    select * from {{ source('raw_netsuite_sa', 'customer_currencies') }}

),

renamed as (

    select
        currency_id,
        customer_id,
        _fivetran_synced,
        deposit_balance_foreign,
        openbalance_foreign,
        unbilled_orders_foreign,
        _fivetran_deleted,
        date_deleted

    from source

)

select * from renamed
