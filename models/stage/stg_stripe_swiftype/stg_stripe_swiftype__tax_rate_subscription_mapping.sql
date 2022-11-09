
with source as (

    select * from {{ source('raw_stripe_swiftype', 'tax_rate_subscription_mapping') }}

),

renamed as (

    select
        subscription_id,
        tax_rate_id,
        _fivetran_synced

    from source

)

select * from renamed
