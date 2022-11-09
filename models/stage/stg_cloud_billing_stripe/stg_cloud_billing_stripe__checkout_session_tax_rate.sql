
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'checkout_session_tax_rate') }}

),

renamed as (

    select
        checkout_session_id,
        tax_rate_id,
        _fivetran_synced,
        amount

    from source

)

select * from renamed
