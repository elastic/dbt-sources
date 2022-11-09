
with source as (

    select * from {{ source('raw_salesforce', 'zendesk_ticket_comments_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        body_length_c,
        converted_to_case_feed_c,
        created_by_id,
        created_date,
        currency_iso_code,
        has_attachments_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        author_id_c,
        body_c,
        created_date_c,
        html_body_c,
        public_c,
        ticket_id_c,
        type_c,
        unique_comment_id_c,
        error_c,
        error_reason_c

    from source

)

select * from renamed
