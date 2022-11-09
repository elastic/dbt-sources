
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_prices') }}

),

renamed as (

    select
        _fivetran_id,
        _fivetran_id2,
        _fivetran_synced,
        currency_id,
        date_last_modified,
        discount_pct,
        isinactive,
        isonline,
        item_id,
        item_price_extid,
        item_price_id,
        item_quantity_id,
        item_unit_price,
        name,
        fivetran_index,
        _fivetran_deleted,
        date_deleted

    from source

)

select * from renamed
