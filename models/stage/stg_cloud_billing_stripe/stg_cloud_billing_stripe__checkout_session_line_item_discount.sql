
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'checkout_session_line_item_discount') }}

),

renamed as (

    select
        checkout_session_line_item_id,
        discount_id,
        _fivetran_synced,
        amount

    from source

)

select * from renamed
