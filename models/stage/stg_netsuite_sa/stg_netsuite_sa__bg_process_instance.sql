
with source as (

    select * from {{ source('raw_netsuite_sa', 'bg_process_instance') }}

),

renamed as (

    select
        bg_process_instance_id,
        _fivetran_deleted,
        _fivetran_synced,
        activity_type_id,
        bg_process_instance_extid,
        date_created,
        date_deleted,
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
