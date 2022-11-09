
with source as (

    select * from {{ source('raw_salesforce', 'email_capture_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        capture_date,
        created_by_id,
        created_date,
        from_pattern,
        is_active,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        raw_message_length,
        recipient,
        sender,
        system_modstamp,
        to_pattern,
        _fivetran_deleted

    from source

)

select * from renamed
