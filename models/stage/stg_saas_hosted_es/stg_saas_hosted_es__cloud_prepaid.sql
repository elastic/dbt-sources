
with source as (

    select * from {{ source('raw_saas_hosted_es', 'cloud_prepaid') }}

),

renamed as (

    select
        user_id,
        email,
        start,
        end,
        identifier,
        premium_product_id,
        opportunity_id

    from source

)

select * from renamed
