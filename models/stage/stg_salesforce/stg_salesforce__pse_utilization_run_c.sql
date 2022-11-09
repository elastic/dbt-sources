
with source as (

    select * from {{ source('raw_salesforce', 'pse_utilization_run_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_end_date_c,
        pse_error_c,
        pse_process_completed_c,
        pse_process_end_date_time_c,
        pse_process_start_date_time_c,
        pse_process_started_c,
        pse_start_date_c,
        pse_start_date_of_changes_c,
        pse_status_c,
        pse_total_batches_c,
        system_modstamp

    from source

)

select * from renamed
