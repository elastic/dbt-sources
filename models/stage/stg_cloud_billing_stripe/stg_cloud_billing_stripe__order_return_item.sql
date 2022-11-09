
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'order_return_item') }}

),

renamed as (

    select
        index,
        order_return_id,
        _fivetran_synced,
        amount,
        currency,
        description,
        discount_id,
        quantity,
        sku_id,
        type

    from source

)

select * from renamed
