
with source as (

    select * from {{ source('raw_salesforce', 'web_link') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        created_date,
        description,
        display_type,
        encoding_key,
        has_menubar,
        has_scrollbars,
        has_toolbar,
        height,
        is_protected,
        is_resizable,
        last_modified_by_id,
        last_modified_date,
        link_type,
        master_label,
        name,
        namespace_prefix,
        open_type,
        page_or_sobject_type,
        position,
        require_row_selection,
        scontrol_id,
        shows_location,
        shows_status,
        system_modstamp,
        url,
        width

    from source

)

select * from renamed
