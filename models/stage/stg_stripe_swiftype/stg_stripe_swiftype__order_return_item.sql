
with source as (

    select * from {{ source('raw_stripe_swiftype', 'order_return_item') }}

),

renamed as (

    select
        index,
        order_return_id,
        _fivetran_synced,
        amount,
        currency,
        description,
        quantity,
        sku_id,
        type,
        discount_id

    from source

)

select * from renamed
