
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'shipping_method') }}

),

renamed as (

    select
        id,
        order_id,
        _fivetran_synced,
        amount,
        currency,
        delivery_estimate_date,
        delivery_estimate_earliest,
        delivery_estimate_latest,
        delivery_estimate_type,
        description

    from source

)

select * from renamed
