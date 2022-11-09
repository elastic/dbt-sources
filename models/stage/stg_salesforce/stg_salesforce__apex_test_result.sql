
with source as (

    select * from {{ source('raw_salesforce', 'apex_test_result') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        apex_class_id,
        apex_test_run_result_id,
        async_apex_job_id,
        message,
        method_name,
        outcome,
        queue_item_id,
        run_time,
        stack_trace,
        system_modstamp,
        test_timestamp,
        apex_log_id,
        _fivetran_deleted

    from source

)

select * from renamed
