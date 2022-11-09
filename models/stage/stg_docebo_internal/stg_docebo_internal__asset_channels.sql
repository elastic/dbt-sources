
with source as (

    select * from {{ source('raw_docebo_internal', 'asset_channels') }}

),

renamed as (

    select
        asset_id,
        channel_id,
        uid_predefined,
        is_enabled,
        ordering,
        sorting,
        permissions,
        created,
        name,
        description,
        peer_review,
        icon_font,
        icon_color,
        icon_background

    from source

)

select * from renamed
