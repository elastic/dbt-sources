
with source as (

    select * from {{ source('raw_stripe_swiftype', 'apple_pay_domain') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        connected_account_id,
        created,
        domain_name,
        livemode

    from source

)

select * from renamed
