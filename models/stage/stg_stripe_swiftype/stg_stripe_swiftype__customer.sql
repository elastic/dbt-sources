
with source as (

    select * from {{ source('raw_stripe_swiftype', 'customer') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_balance,
        address_city,
        address_country,
        address_line_1,
        address_line_2,
        address_postal_code,
        address_state,
        balance,
        bank_account_id,
        created,
        currency,
        default_card_id,
        delinquent,
        description,
        email,
        invoice_prefix,
        invoice_settings_default_payment_method,
        invoice_settings_footer,
        is_deleted,
        livemode,
        name,
        phone,
        shipping_address_city,
        shipping_address_country,
        shipping_address_line_1,
        shipping_address_line_2,
        shipping_address_postal_code,
        shipping_address_state,
        shipping_carrier,
        shipping_name,
        shipping_phone,
        shipping_tracking_number,
        source_id,
        tax_exempt,
        tax_info_tax_id,
        tax_info_type,
        tax_info_verification_status,
        tax_info_verification_verified_name,
        metadata

    from source

)

select * from renamed
