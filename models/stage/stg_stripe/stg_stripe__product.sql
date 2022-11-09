
with source as (

    select * from {{ source('raw_stripe', 'product') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        active,
        caption,
        created,
        description,
        is_deleted,
        livemode,
        name,
        package_dimensions_height,
        package_dimensions_length,
        package_dimensions_weight,
        package_dimensions_width,
        shippable,
        statement_descriptor,
        type,
        unit_label,
        updated,
        url

    from source

)

select * from renamed
