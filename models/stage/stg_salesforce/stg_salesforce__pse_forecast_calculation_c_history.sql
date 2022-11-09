
with source as (

    select * from {{ source('raw_salesforce', 'pse_forecast_calculation_c_history') }}

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
        pse_backlog_calculation_c,
        pse_batch_id_c,
        pse_batch_process_c,
        pse_error_details_c,
        pse_forecast_enhanced_calculation_c,
        pse_group_c,
        pse_post_process_batch_id_c,
        pse_practice_c,
        pse_region_c,
        pse_status_c,
        pse_time_period_c,
        pse_total_number_of_logs_c,
        system_modstamp

    from source

)

select * from renamed
