
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'checkout_session_shipping_address_allowed_countries') }}

),

renamed as (

    select
        allowed_country_code,
        checkout_session_id,
        _fivetran_synced

    from source

)

select * from renamed
