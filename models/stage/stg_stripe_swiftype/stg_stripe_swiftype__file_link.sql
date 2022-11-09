
with source as (

    select * from {{ source('raw_stripe_swiftype', 'file_link') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created,
        expired,
        expires_at,
        file_id,
        livemode,
        url,
        metadata

    from source

)

select * from renamed
