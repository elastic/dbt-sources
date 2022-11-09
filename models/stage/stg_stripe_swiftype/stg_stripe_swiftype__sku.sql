
with source as (

    select * from {{ source('raw_stripe_swiftype', 'sku') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        active,
        created,
        currency,
        image,
        inventory_quantity,
        inventory_type,
        inventory_value,
        is_deleted,
        livemode,
        package_dimensions_height,
        package_dimensions_length,
        package_dimensions_weight,
        package_dimensions_width,
        price,
        product_id,
        updated,
        metadata

    from source

)

select * from renamed
