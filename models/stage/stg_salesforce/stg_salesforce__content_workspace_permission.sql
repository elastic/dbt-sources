
with source as (

    select * from {{ source('raw_salesforce', 'content_workspace_permission') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        description,
        last_modified_by_id,
        last_modified_date,
        name,
        permissions_add_comment,
        permissions_add_content,
        permissions_add_content_obo,
        permissions_archive_content,
        permissions_chatter_sharing,
        permissions_delete_content,
        permissions_deliver_content,
        permissions_feature_content,
        permissions_manage_workspace,
        permissions_modify_comments,
        permissions_organize_file_and_folder,
        permissions_tag_content,
        permissions_view_comments,
        system_modstamp,
        type,
        _fivetran_deleted

    from source

)

select * from renamed
