
with source as (

    select * from {{ source('raw_stripe_swiftype', 'cardholder') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        billing_address_city,
        billing_address_country,
        billing_address_line_1,
        billing_address_line_2,
        billing_address_postal_code,
        billing_address_state,
        billing_name,
        created,
        email,
        is_default,
        livemode,
        name,
        phone_number,
        status,
        type,
        metadata,
        spending_controls_blocked_categories,
        spending_controls_spending_limits_currency,
        spending_controls_allowed_categories,
        spending_controls_spending_limits

    from source

)

select * from renamed
