
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'shipping_rate') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        active,
        amount,
        created,
        currency,
        delivery_estimate_maximum_unit,
        delivery_estimate_maximum_value,
        delivery_estimate_minimum_unit,
        delivery_estimate_minimum_value,
        display_name,
        livemode,
        tax_behavior,
        tax_code,
        type

    from source

)

select * from renamed
