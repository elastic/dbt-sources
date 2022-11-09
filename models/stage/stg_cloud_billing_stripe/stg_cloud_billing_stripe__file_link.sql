
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'file_link') }}

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
        metadata,
        url

    from source

)

select * from renamed
