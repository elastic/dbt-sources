
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'tier') }}

),

renamed as (

    select
        id,
        index,
        _fivetran_synced,
        flat_amount,
        unit_amount,
        up_to

    from source

)

select * from renamed
