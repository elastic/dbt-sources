
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'checkout_session_payment_method') }}

),

renamed as (

    select
        checkout_session_id,
        payment_method_type,
        _fivetran_synced

    from source

)

select * from renamed
