
with source as (

    select * from {{ source('raw_salesforce', 'content_workspace') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        default_record_type_id,
        description,
        developer_name,
        is_restrict_content_types,
        is_restrict_linked_content_types,
        last_modified_by_id,
        last_modified_date,
        last_workspace_activity_date,
        name,
        namespace_prefix,
        root_content_folder_id,
        should_add_creator_membership,
        system_modstamp,
        tag_model,
        workspace_type,
        workspace_image_id,
        _fivetran_deleted

    from source

)

select * from renamed
