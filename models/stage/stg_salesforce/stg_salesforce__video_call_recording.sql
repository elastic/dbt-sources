
with source as (

    select * from {{ source('raw_salesforce', 'video_call_recording') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        duration_in_seconds,
        end_date_time,
        external_recording_key,
        file_size_in_byte,
        file_type,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        start_date_time,
        system_modstamp,
        video_call_record_id

    from source

)

select * from renamed
