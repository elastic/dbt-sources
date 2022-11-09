
with source as (

    select * from {{ source('raw_stripe_swiftype', 'shipping_method') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        currency,
        delivery_estimate_date,
        delivery_estimate_earliest,
        delivery_estimate_latest,
        delivery_estimate_type,
        description,
        order_id

    from source

)

select * from renamed
