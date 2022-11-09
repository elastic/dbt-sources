
with source as (

    select * from {{ source('raw_salesforce', 'video_call') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        description,
        duration_in_seconds,
        end_date_time,
        event_id,
        external_id,
        host_id,
        intelligence_score,
        is_call_coaching_included,
        is_deleted,
        is_recorded,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        related_record_id,
        start_date_time,
        system_modstamp,
        vendor_meeting_key,
        vendor_meeting_uuid,
        vendor_name

    from source

)

select * from renamed
