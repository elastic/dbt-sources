
with source as (

    select * from {{ source('raw_netsuite_sa', 'customer_item_pricing') }}

),

renamed as (

    select
        customer_id,
        fivetran_index,
        _fivetran_deleted,
        _fivetran_synced,
        currency_id,
        date_deleted,
        item_id,
        item_unit_price,
        price_type_id

    from source

)

select * from renamed
