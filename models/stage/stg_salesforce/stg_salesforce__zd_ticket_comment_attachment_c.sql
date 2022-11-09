
with source as (

    select * from {{ source('raw_salesforce', 'zd_ticket_comment_attachment_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        actual_redirection_c,
        actual_redirection_url_c,
        comment_id_c,
        content_type_c,
        content_url_c,
        converted_to_feed_c,
        file_name_c,
        mapped_content_url_c,
        size_c,
        status_code_c,
        unique_attachment_id_c,
        url_c,
        zendesk_ticket_comment_c

    from source

)

select * from renamed
