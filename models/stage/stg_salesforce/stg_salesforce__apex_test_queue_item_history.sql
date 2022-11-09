
with source as (

    select * from {{ source('raw_salesforce', 'apex_test_queue_item_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        apex_class_id,
        created_by_id,
        created_date,
        extended_status,
        parent_job_id,
        status,
        system_modstamp,
        test_run_result_id,
        should_skip_code_coverage,
        _fivetran_deleted

    from source

)

select * from renamed
