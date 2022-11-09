
with source as (

    select * from {{ source('raw_stripe', 'invoice_discount') }}

),

renamed as (

    select
        fivetran_id,
        _fivetran_synced,
        coupon_id,
        customer_id,
        end,
        invoice_id,
        start

    from source

)

select * from renamed
