
with source as (

    select * from {{ source('raw_salesforce', 'pse_utilization_setup_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_active_c,
        pse_assignment_batch_size_c,
        pse_held_resource_request_batch_size_c,
        pse_only_include_changes_c,
        pse_resource_batch_size_c,
        pse_schedule_exception_batch_size_c,
        pse_timecard_batch_size_c,
        pse_utilization_period_c,
        pse_utilization_result_batch_size_c,
        pse_work_calendar_batch_size_c,
        system_modstamp

    from source

)

select * from renamed
