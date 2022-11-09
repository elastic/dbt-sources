
with source as (

    select * from {{ source('raw_stripe_swiftype', 'issuing_card') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        brand,
        cancellation_reason,
        cardholder_id,
        created,
        currency,
        exp_month,
        exp_year,
        last_4,
        livemode,
        name,
        number,
        replaced_by,
        replacement_for,
        replacement_reason,
        shipping_address_city,
        shipping_address_country,
        shipping_address_line_1,
        shipping_address_line_2,
        shipping_address_postal_code,
        shipping_address_state,
        shipping_carrier,
        shipping_eta,
        shipping_name,
        shipping_service,
        shipping_status,
        shipping_tracking_number,
        shipping_tracking_url,
        shipping_type,
        status,
        type,
        metadata,
        connected_account_id

    from source

)

select * from renamed
