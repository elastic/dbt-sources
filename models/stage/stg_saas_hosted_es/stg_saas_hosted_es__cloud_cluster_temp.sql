
with source as (

    select * from {{ source('raw_saas_hosted_es', 'cloud_cluster_temp') }}

),

renamed as (

    select
        id,
        user_id,
        region,
        cluster_id,
        cluster_name,
        capacity,
        version,
        plugins,
        product_id,
        product_nsid,
        product_identifier,
        product_level,
        product_name,
        product_capacity,
        product_region,
        created,
        actiondate,
        action,
        currentdate,
        is_hidden,
        txid,
        availability_zones,
        product_last_modified

    from source

)

select * from renamed
