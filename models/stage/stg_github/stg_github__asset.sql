
with source as (

    select * from {{ source('raw_github', 'asset') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        content_type,
        created_at,
        download_count,
        label,
        name,
        release_id,
        size,
        state,
        updated_at,
        uploader_id

    from source

)

select * from renamed
