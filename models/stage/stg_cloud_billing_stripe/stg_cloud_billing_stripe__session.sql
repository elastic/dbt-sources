
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'session') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        after_expiration,
        allow_promotion_codes,
        amount_subtotal,
        amount_total,
        automatic_tax,
        billing_address_collection,
        cancel_url,
        client_reference_id,
        consent,
        consent_collection,
        consent_details,
        currency,
        customer_creation,
        customer_email,
        customer_id,
        expires_at,
        livemode,
        locale,
        metadata,
        mode,
        object,
        payment_intent_id,
        payment_link,
        payment_method_options,
        payment_method_types,
        payment_status,
        phone_number_collection,
        recovered_from,
        setup_intent_id,
        shipping,
        shipping_address_collection,
        shipping_options,
        shipping_rate,
        status,
        submit_type,
        subscription_id,
        success_url,
        tax_id_collection,
        total_details,
        url

    from source

)

select * from renamed
