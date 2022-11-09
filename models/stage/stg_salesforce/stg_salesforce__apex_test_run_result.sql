
with source as (

    select * from {{ source('raw_salesforce', 'apex_test_run_result') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        async_apex_job_id,
        classes_completed,
        classes_enqueued,
        created_by_id,
        created_date,
        end_time,
        is_all_tests,
        is_deleted,
        job_name,
        last_modified_by_id,
        last_modified_date,
        methods_completed,
        methods_enqueued,
        methods_failed,
        source,
        start_time,
        status,
        system_modstamp,
        test_time,
        user_id,
        _fivetran_deleted

    from source

)

select * from renamed
