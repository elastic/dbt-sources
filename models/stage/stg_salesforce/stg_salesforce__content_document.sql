
with source as (

    select * from {{ source('raw_salesforce', 'content_document') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        archived_by_id,
        archived_date,
        content_asset_id,
        content_modified_date,
        content_size,
        created_by_id,
        created_date,
        description,
        file_extension,
        file_type,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        latest_published_version_id,
        owner_id,
        publish_status,
        sharing_option,
        sharing_privacy,
        system_modstamp,
        title,
        parent_id,
        _fivetran_deleted,
        is_archived

    from source

)

select * from renamed
