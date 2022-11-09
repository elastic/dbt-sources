
with source as (

    select * from {{ source('raw_marketo', 'form') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        button_label,
        button_location,
        created_at,
        description,
        folder_folder_name,
        folder_id,
        folder_type,
        folder_value,
        font_family,
        font_size,
        known_visitor_template,
        known_visitor_type,
        label_position,
        language,
        locale,
        name,
        program_id,
        progressive_profiling,
        status,
        theme,
        updated_at,
        url,
        waiting_label

    from source

)

select * from renamed
