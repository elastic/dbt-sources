
with source as (

    select * from {{ source('raw_salesforce', 'pse_utilization_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        pse_assignment_batch_size_c,
        pse_calculate_cross_products_c,
        pse_calculate_held_resource_request_time_c,
        pse_calculate_summary_by_role_c,
        pse_calculate_unheld_resource_request_time_c,
        pse_custom_filtersfor_unheld_rrutilization_c,
        pse_default_opportunity_probability_c,
        pse_historical_ute_work_cal_start_day_c,
        pse_minimum_opportunity_probability_c,
        pse_resource_batch_size_c,
        pse_resource_request_batch_size_c,
        pse_target_utilization_approach_c,
        pse_timecard_batch_size_c,
        pse_timecard_statuses_c,
        pse_uncheck_master_based_on_time_parent_c,
        pse_use_last_date_on_resource_c,
        pse_use_utilization_engine_c,
        pse_use_utilization_engine_tod_c,
        pse_utilization_engine_batch_size_c,
        pse_utilization_engine_max_range_c,
        pse_utilization_engine_max_range_tod_c,
        pse_utilization_engine_start_range_c,
        pse_utilization_engine_start_range_tod_c,
        setup_owner_id,
        system_modstamp,
        pse_batch_deletion_cutoff_c,
        pse_deletion_batch_size_c,
        pse_deletion_child_record_batch_size_c

    from source

)

select * from renamed
