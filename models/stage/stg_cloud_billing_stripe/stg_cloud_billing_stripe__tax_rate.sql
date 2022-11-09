
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'tax_rate') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        active,
        created,
        description,
        display_name,
        inclusive,
        jurisdiction,
        livemode,
        metadata,
        percentage

    from source

)

select * from renamed
