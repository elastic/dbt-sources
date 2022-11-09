
with source as (

    select * from {{ source('raw_salesforce', 'voice_call_recording') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        duration_in_seconds,
        is_consented,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        media_content_id,
        name,
        owner_id,
        system_modstamp,
        voice_call_id

    from source

)

select * from renamed
