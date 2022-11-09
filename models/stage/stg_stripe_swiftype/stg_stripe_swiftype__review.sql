
with source as (

    select * from {{ source('raw_stripe_swiftype', 'review') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        billing_zip,
        charge_id,
        closed_reason,
        created,
        ip_address,
        ip_address_location_city,
        ip_address_location_country,
        ip_address_location_latitude,
        ip_address_location_longitude,
        ip_address_location_region,
        livemode,
        open,
        opened_reason,
        payment_intent_id,
        reason,
        session_browser,
        session_device,
        session_platform,
        session_version

    from source

)

select * from renamed
