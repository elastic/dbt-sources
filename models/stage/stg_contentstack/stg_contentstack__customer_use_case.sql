
with source as (

    select * from {{ source('raw_contentstack', 'customer_use_case') }}

),

renamed as (

    select
        uid,
        created_at,
        created_by,
        updated_at,
        updated_by,
        title,
        label_l10n,
        sequence,
        keyword,
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
