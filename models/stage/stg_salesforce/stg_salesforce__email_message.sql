
with source as (

    select * from {{ source('raw_salesforce', 'email_message') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_id,
        bcc_address,
        cc_address,
        created_by_id,
        created_date,
        from_address,
        from_name,
        has_attachment,
        headers,
        html_body,
        incoming,
        is_client_managed,
        is_deleted,
        is_externally_visible,
        last_modified_by_id,
        last_modified_date,
        message_date,
        message_identifier,
        parent_id,
        reply_to_email_message_id,
        status,
        subject,
        system_modstamp,
        text_body,
        thread_identifier,
        to_address,
        validated_from_address,
        first_opened_date,
        last_opened_date,
        is_opened,
        email_template_id,
        is_private_draft,
        is_tracked,
        is_bounced,
        related_to_id,
        attached_contract_documents_c

    from source

)

select * from renamed
