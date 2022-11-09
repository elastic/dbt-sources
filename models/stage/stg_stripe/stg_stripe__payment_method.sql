
with source as (

    select * from {{ source('raw_stripe', 'payment_method') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        billing_detail_address_city,
        billing_detail_address_country,
        billing_detail_address_line_1,
        billing_detail_address_line_2,
        billing_detail_address_postal_code,
        billing_detail_address_state,
        billing_detail_email,
        billing_detail_name,
        billing_detail_phone,
        created,
        customer_id,
        is_deleted,
        livemode,
        type

    from source

)

select * from renamed
