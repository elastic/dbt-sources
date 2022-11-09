
with source as (

    select * from {{ source('raw_contentstack', 'blog_weekly_category') }}

),

renamed as (

    select
        uid,
        created_at,
        created_by,
        updated_at,
        updated_by,
        title,
        key,
        image_uid,
        image_created_at,
        image_updated_at,
        image_created_by,
        image_updated_by,
        image_content_type,
        image_file_size,
        image_tags,
        image_filename,
        image_url,
        image_acl_roles,
        image_acl_others_read,
        image_acl_others_create,
        image_acl_others_update,
        image_acl_others_delete,
        image_acl_others_sub_acl_read,
        image_acl_others_sub_acl_create,
        image_acl_others_sub_acl_update,
        image_acl_others_sub_acl_delete,
        image_acl_others_sub_acl_publish,
        image_is_dir,
        image_version,
        image_title,
        image_description,
        image_parent_uid,
        image_publish_details_environment,
        image_publish_details_locale,
        image_publish_details_time,
        image_publish_details_user,
        locale,
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
        tags,
        _version,
        publish_details_environment,
        publish_details_locale,
        publish_details_time,
        publish_details_user

    from source

)

select * from renamed
