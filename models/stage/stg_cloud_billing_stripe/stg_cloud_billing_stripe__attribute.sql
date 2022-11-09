
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'attribute') }}

),

renamed as (

    select
        id,
        name,
        _fivetran_synced,
        value

    from source

)

select * from renamed
