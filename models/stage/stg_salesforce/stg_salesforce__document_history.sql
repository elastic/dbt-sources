
with source as (

    select * from {{ source('raw_salesforce', 'document_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        author_id,
        body_length,
        content_type,
        created_by_id,
        created_date,
        description,
        developer_name,
        folder_id,
        is_body_searchable,
        is_deleted,
        is_internal_use_only,
        is_public,
        keywords,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        namespace_prefix,
        system_modstamp,
        type,
        url

    from source

)

select * from renamed
