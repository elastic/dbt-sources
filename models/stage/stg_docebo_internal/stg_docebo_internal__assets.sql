
with source as (

    select * from {{ source('raw_docebo_internal', 'assets') }}

),

renamed as (

    select
        id,
        title,
        description,
        date_created,
        kind_general,
        kind_sub,
        kind_type,
        is_private,
        views,
        external_id,
        owner_id,
        owner_uuid,
        owner_short_name,
        owner_full_name,
        owner_avatar,
        published_full_name,
        published_created_at,
        last_edit_full_name,
        last_edit_created_at,
        last_edit_id

    from source

)

select * from renamed
