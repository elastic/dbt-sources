
with source as (

    select * from {{ source('raw_contentstack', 'product_icon') }}

),

renamed as (

    select
        uid,
        created_at,
        created_by,
        updated_at,
        updated_by,
        title,
        url,
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
        image_is_dir,
        image_version,
        image_title,
        image_publish_details_environment,
        image_publish_details_locale,
        image_publish_details_time,
        image_publish_details_user,
        locale,
        tags,
        _version,
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
        publish_details_environment,
        publish_details_locale,
        publish_details_time,
        publish_details_user

    from source

)

select * from renamed
