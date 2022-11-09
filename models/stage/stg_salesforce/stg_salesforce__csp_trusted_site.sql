
with source as (

    select * from {{ source('raw_salesforce', 'csp_trusted_site') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        description,
        developer_name,
        endpoint_url,
        is_active,
        is_deleted,
        language,
        last_modified_by_id,
        last_modified_date,
        master_label,
        namespace_prefix,
        system_modstamp,
        context,
        _fivetran_deleted,
        is_applicable_to_connect_src,
        is_applicable_to_font_src,
        is_applicable_to_frame_src,
        is_applicable_to_img_src,
        is_applicable_to_media_src,
        is_applicable_to_style_src

    from source

)

select * from renamed
