
with source as (

    select * from {{ source('raw_contentstack', 'asset') }}

),

renamed as (

    select
        uid,
        created_at,
        created_by,
        updated_at,
        updated_by,
        content_type,
        file_size,
        tags,
        filename,
        url,
        acl_roles,
        acl_others_read,
        acl_others_create,
        acl_others_update,
        acl_others_delete,
        acl_others_sub_acl_read,
        acl_others_sub_acl_create,
        acl_others_sub_acl_update,
        acl_others_sub_acl_delete,
        acl_others_sub_acl_publish,
        is_dir,
        _version,
        title,
        description,
        publish_details_environment,
        publish_details_locale,
        publish_details_time,
        publish_details_user,
        parent_uid

    from source

)

select * from renamed
