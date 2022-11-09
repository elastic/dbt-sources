
with source as (

    select * from {{ source('raw_salesforce', 'list_email') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        campaign_id,
        created_by_id,
        created_date,
        currency_iso_code,
        from_address,
        from_name,
        has_attachment,
        html_body,
        is_deleted,
        is_tracked,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        scheduled_date,
        status,
        subject,
        system_modstamp,
        text_body,
        total_sent

    from source

)

select * from renamed
