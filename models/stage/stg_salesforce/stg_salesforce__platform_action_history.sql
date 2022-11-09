
with source as (

    select * from {{ source('raw_salesforce', 'platform_action_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        action_list_context,
        action_target,
        action_target_type,
        api_name,
        category,
        confirmation_message,
        device_format,
        external_id,
        group_id,
        icon_content_type,
        icon_height,
        icon_url,
        icon_width,
        id,
        invocation_status,
        invoked_by_user_id,
        is_group_default,
        is_mass_action,
        label,
        last_modified_date,
        primary_color,
        related_list_record_id,
        related_source_entity,
        section,
        source_entity,
        subtype,
        target_object,
        target_url,
        type,
        _fivetran_deleted,
        open_type,
        retrieval_mode

    from source

)

select * from renamed
