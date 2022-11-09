
with source as (

    select * from {{ source('raw_netsuite_sa', 'ap_promotion_shipping_price') }}

),

renamed as (

    select
        ap_promotion_shipping_price_id,
        _fivetran_deleted,
        _fivetran_synced,
        amount,
        ap_promotion_shipping_price_ex,
        currency_id,
        date_created,
        date_deleted,
        is_inactive,
        is_percent,
        last_modified_date,
        parent_id,
        promotion_discount_id

    from source

)

select * from renamed
