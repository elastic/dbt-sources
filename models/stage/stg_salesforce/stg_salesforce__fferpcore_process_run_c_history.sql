
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_process_run_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_async_apex_job_id_c,
        fferpcore_description_c,
        fferpcore_finish_time_c,
        fferpcore_is_parent_c,
        fferpcore_parent_process_run_c,
        fferpcore_start_time_c,
        fferpcore_started_by_c,
        fferpcore_total_number_of_errors_c,
        fferpcore_total_number_of_pending_c,
        fferpcore_total_number_of_successes_c,
        fferpcore_using_detailed_monitoring_c,
        id,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
