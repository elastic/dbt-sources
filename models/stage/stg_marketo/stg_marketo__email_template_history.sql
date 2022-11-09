
with source as (

    select * from {{ source('raw_marketo', 'email_template_history') }}

),

renamed as (

    select
        id,
        updated_at,
        _fivetran_synced,
        created_at,
        description,
        folder_folder_name,
        folder_id,
        folder_type,
        folder_value,
        from_email,
        from_name,
        name,
        operational,
        program_id,
        publish_to_msi,
        reply_email,
        status,
        subject,
        template,
        text_only,
        url,
        version,
        web_view,
        workspace

    from source

)

select * from renamed
