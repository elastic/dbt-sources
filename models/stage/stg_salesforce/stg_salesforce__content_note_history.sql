
with source as (

    select * from {{ source('raw_salesforce', 'content_note_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        content_size,
        created_by_id,
        created_date,
        file_extension,
        file_type,
        is_deleted,
        is_read_only,
        last_modified_by_id,
        last_modified_date,
        last_viewed_date,
        latest_published_version_id,
        owner_id,
        sharing_privacy,
        text_preview,
        title,
        _fivetran_deleted,
        content_modified_date

    from source

)

select * from renamed
