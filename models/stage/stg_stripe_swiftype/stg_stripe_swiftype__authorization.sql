
with source as (

    select * from {{ source('raw_stripe_swiftype', 'authorization') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        approved,
        authorization_method,
        card_id,
        cardholder,
        created,
        currency,
        held_amount,
        held_currency,
        is_held_amount_controllable,
        livemode,
        merchant_data_category,
        merchant_data_city,
        merchant_data_country,
        merchant_data_name,
        merchant_data_network_id,
        merchant_data_postal_code,
        merchant_data_state,
        pending_authorized_amount,
        pending_held_amount,
        status,
        verification_data_address_line_1_check,
        verification_data_address_zip_check,
        verification_data_cvc_check,
        verification_data_expiry_check,
        wallet_provider,
        metadata,
        amount_details_atm_fee

    from source

)

select * from renamed
