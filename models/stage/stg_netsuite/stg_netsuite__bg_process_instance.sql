
with source as (

    select * from {{ source('raw_netsuite', 'bg_process_instance') }}

),

renamed as (

    select
        activity_type_id,
        bg_process_instance_extid,
        bg_process_instance_id,
        date_created,
        expected_records,
        is_inactive,
        last_modified_date,
        parent_id,
        process_message,
        process_name,
        process_state,
        process_state_definition,
        process_status_id,
        process_user_id,
        record_id,
        records_failed,
        records_processed,
        records_skipped,
        redirection,
        rollback_data,
        script_function_name

    from source

)

select * from renamed
