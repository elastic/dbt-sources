
with source as (

    select * from {{ source('raw_saas_hosted_es', 'cloud_products') }}

),

renamed as (

    select
        identifier,
        price,
        region,
        pretty_region,
        instance_config_name,
        data_name,
        ssd,
        level,
        is_free_tier,
        capacity,
        pretty_capacity,
        is_dnt,
        cloud_provider,
        availability_zones,
        product_type

    from source

)

select * from renamed
