
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'checkout_session_line_item') }}

),

renamed as (

    select
        checkout_session_id,
        id,
        _fivetran_synced,
        amount_discount,
        amount_subtotal,
        amount_tax,
        amount_total,
        currency,
        description,
        object,
        price_id,
        quantity

    from source

)

select * from renamed
