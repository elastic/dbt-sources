
with source as (

    select * from {{ source('raw_netsuite_sa', 'vendor_subsidiary_map') }}

),

renamed as (

    select
        subsidiary_id,
        vendor_id,
        _fivetran_synced,
        _fivetran_deleted,
        date_deleted,
        unbilled_orders,
        vendor_subsidiary_map_id,
        balance,
        unbilled_orders_base,
        credit_limit,
        balance_base,
        vendor_subsidiary_map_extid

    from source

)

select * from renamed
