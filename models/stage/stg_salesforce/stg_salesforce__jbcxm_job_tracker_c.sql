
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_job_tracker_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_async_job_id_c,
        jbcxm_completion_date_c,
        jbcxm_failure_reason_c,
        jbcxm_failures_c,
        jbcxm_job_type_c,
        jbcxm_period_c,
        jbcxm_processed_c,
        jbcxm_status_c,
        jbcxm_submitted_date_c,
        jbcxm_title_c,
        jbcxm_total_batches_c,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
