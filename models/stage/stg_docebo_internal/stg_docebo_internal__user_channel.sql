
with source as (

    select * from {{ source('raw_docebo_internal', 'user_channel') }}

),

renamed as (

    select
        uuid,
        asset_id,
        title,
        rating,
        is_new,
        duration,
        hidden,
        image_url,
        uri,
        is_watched,
        views,
        type,
        status,
        status_label,
        publish_date,
        is_asset_downloadable,
        outdated_total_users,
        outdated_already_marked,
        inviter,
        actions

    from source

)

select * from renamed
