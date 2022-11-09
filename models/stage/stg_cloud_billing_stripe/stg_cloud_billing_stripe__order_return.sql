
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'order_return') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        created,
        currency,
        livemode,
        order_id,
        refund_id

    from source

)

select * from renamed
