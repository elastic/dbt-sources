
with source as (

    select * from {{ source('raw_netsuite_sa', 'customer_subsidiary_map_history') }}

),

renamed as (

    select
        customer_id,
        subsidiary_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        unbilled_orders,
        balance,
        customer_subsidiary_map_id,
        deposit_balance,
        customer_subsidiary_map_extid,
        partition_date

    from source

)

select * from renamed
