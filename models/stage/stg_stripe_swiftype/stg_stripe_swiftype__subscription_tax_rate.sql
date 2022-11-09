
with source as (

    select * from {{ source('raw_stripe_swiftype', 'subscription_tax_rate') }}

),

renamed as (

    select
        subscription_id,
        tax_rate_id,
        _fivetran_synced

    from source

)

select * from renamed