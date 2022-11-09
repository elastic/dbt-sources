
with source as (

    select * from {{ source('raw_salesforce', 'email_template') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        api_version,
        body,
        brand_template_id,
        created_by_id,
        created_date,
        description,
        developer_name,
        encoding,
        folder_id,
        html_value,
        is_active,
        last_modified_by_id,
        last_modified_date,
        last_used_date,
        markup,
        name,
        namespace_prefix,
        owner_id,
        related_entity_type,
        subject,
        system_modstamp,
        template_style,
        template_type,
        times_used,
        ui_type,
        folder_name,
        enhanced_letterhead_id,
        is_builder_content

    from source

)

select * from renamed
