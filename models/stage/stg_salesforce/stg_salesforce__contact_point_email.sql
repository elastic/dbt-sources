
with source as (

    select * from {{ source('raw_salesforce', 'contact_point_email') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        active_from_date,
        active_to_date,
        best_time_to_contact_end_time,
        best_time_to_contact_start_time,
        best_time_to_contact_timezone,
        created_by_id,
        created_date,
        email_address,
        email_domain,
        email_latest_bounce_date_time,
        email_latest_bounce_reason_text,
        email_mail_box,
        is_deleted,
        is_primary,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        parent_id,
        system_modstamp,
        usage_type,
        preference_rank

    from source

)

select * from renamed
