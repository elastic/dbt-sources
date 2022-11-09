
with source as (

    select * from {{ source('raw_netsuite_sa', 'message_history') }}

),

renamed as (

    select
        message_id,
        _fivetran_synced,
        author_id,
        bcc,
        cc,
        company_id,
        date_0,
        date_last_modified,
        event_id,
        from_0,
        internal_only,
        is_emailed,
        is_incoming,
        message,
        message_extid,
        message_type_id,
        recipient_id,
        record_id,
        record_type_id,
        subject,
        template_id,
        to_0,
        transaction_id,
        date_deleted,
        _fivetran_deleted,
        partition_date

    from source

)

select * from renamed
