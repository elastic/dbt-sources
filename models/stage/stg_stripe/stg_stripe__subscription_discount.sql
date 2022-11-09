
with source as (

    select * from {{ source('raw_stripe', 'subscription_discount') }}

),

renamed as (

    select
        fivetran_id,
        _fivetran_synced,
        coupon_id,
        customer_id,
        end,
        start,
        subscription_id

    from source

)

select * from renamed
