
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'order_history') }}

),

renamed as (

    select
        _fivetran_start,
        id,
        _fivetran_active,
        _fivetran_end,
        _fivetran_synced,
        amount,
        amount_returned,
        application,
        application_fee,
        charge_id,
        created,
        currency,
        customer_id,
        email,
        external_coupon_code,
        livemode,
        metadata,
        selected_shipping_method,
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
        status,
        status_transitions_canceled,
        status_transitions_fulfilled,
        status_transitions_paid,
        status_transitions_returned,
        updated,
        upstream_id

    from source

)

select * from renamed
