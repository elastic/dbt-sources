
with source as (

    select * from {{ source('raw_salesforce', 'pse_forecast_enhanced_calculation_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_backlog_calculation_c,
        pse_batch_id_c,
        pse_batch_process_c,
        pse_committed_c,
        pse_current_c,
        pse_forecast_setup_c,
        pse_group_c,
        pse_practice_c,
        pse_region_c,
        pse_status_c,
        pse_time_period_c,
        pse_total_number_of_logs_c,
        system_modstamp

    from source

)

select * from renamed
