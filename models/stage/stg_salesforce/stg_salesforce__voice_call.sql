
with source as (

    select * from {{ source('raw_salesforce', 'voice_call') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        activity_id,
        call_connect_date_time,
        call_disposition,
        call_duration_in_seconds,
        call_end_date_time,
        call_recording_id,
        call_start_date_time,
        call_type,
        caller_id_type,
        conference_key,
        created_by_id,
        created_date,
        currency_code,
        from_phone_number,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        media_provider_id,
        owner_id,
        price,
        related_record_id,
        source_type,
        system_modstamp,
        to_phone_number,
        user_id,
        vendor_call_key,
        vendor_parent_call_key,
        vendor_type,
        is_recorded

    from source

)

select * from renamed
