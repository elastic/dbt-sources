
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_billing_rates') }}

),

renamed as (

    select
        billing_class_id,
        currency_id,
        item_id,
        item_price_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        date_last_modified,
        discount_pct,
        isinactive,
        isonline,
        item_price_extid,
        item_unit_price,
        name

    from source

)

select * from renamed
