
with source as (

    select * from {{ source('raw_netsuite_sa', 'crmtemplate') }}

),

renamed as (

    select
        crmtemplate_id,
        _fivetran_synced,
        crmtemplate_modified_by,
        crmtemplate_record_type,
        date_last_modified,
        description,
        from_email,
        is_inactive,
        is_private,
        name,
        owner_id,
        reply_email_address,
        subject,
        _fivetran_deleted,
        date_deleted

    from source

)

select * from renamed
