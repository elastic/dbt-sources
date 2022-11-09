
with source as (

    select * from {{ source('raw_netsuite_sa', 'bg_process_log_history') }}

),

renamed as (

    select
        bg_process_log_id,
        _fivetran_deleted,
        _fivetran_synced,
        bg_process_log_extid,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        log_message,
        message_type_id,
        parent_id,
        process_instance_id,
        related_record,
        partition_date

    from source

)

select * from renamed
