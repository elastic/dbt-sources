
with source as (

    select * from {{ source('raw_salesforce', 'chatter_extension') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        composition_component_enum_or_id,
        created_by_id,
        created_date,
        description,
        developer_name,
        extension_name,
        header_text,
        hover_text,
        icon_id,
        is_deleted,
        is_protected,
        language,
        last_modified_by_id,
        last_modified_date,
        master_label,
        namespace_prefix,
        render_component_enum_or_id,
        system_modstamp,
        type,
        _fivetran_deleted

    from source

)

select * from renamed
