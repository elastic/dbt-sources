
with source as (

    select * from {{ source('raw_netsuite_sa', 'vendor_currencies') }}

),

renamed as (

    select
        currency_id,
        vendor_id,
        _fivetran_synced,
        in_transit_balance_foreign,
        openbalance_foreign,
        unbilled_orders_foreign,
        _fivetran_deleted,
        date_deleted,
        fivetran_index,
        prepayment_balance_foreign

    from source

)

select * from renamed
