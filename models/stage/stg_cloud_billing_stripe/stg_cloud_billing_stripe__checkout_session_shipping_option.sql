
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'checkout_session_shipping_option') }}

),

renamed as (

    select
        checkout_session_id,
        shipping_rate_id,
        _fivetran_synced,
        shipping_amount

    from source

)

select * from renamed
