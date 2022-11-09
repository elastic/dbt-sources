
with source as (

    select * from {{ source('raw_netsuite', 'bg_process_log') }}

),

renamed as (

    select
        bg_process_log_extid,
        bg_process_log_id,
        date_created,
        is_inactive,
        last_modified_date,
        log_message,
        message_type_id,
        parent_id,
        process_instance_id,
        related_record

    from source

)

select * from renamed
