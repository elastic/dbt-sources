
with source as (

    select * from {{ source('raw_salesforce', 'pse_utilization_calculation_c') }}

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
        pse_batch_id_c,
        pse_batch_id_unheld_calc_c,
        pse_calculate_historical_utilization_c,
        pse_calculate_scheduled_utilization_c,
        pse_default_opportunity_probability_c,
        pse_delete_prior_calculation_c,
        pse_error_details_c,
        pse_group_c,
        pse_historical_utilization_cut_off_date_c,
        pse_historical_utilization_end_date_c,
        pse_historical_utilization_start_date_c,
        pse_include_sublevels_c,
        pse_include_sublevels_in_subtotals_c,
        pse_is_report_master_c,
        pse_minimum_opportunity_probability_c,
        pse_practice_c,
        pse_region_c,
        pse_resource_c,
        pse_scheduled_utilization_end_date_c,
        pse_scheduled_utilization_start_date_c,
        pse_status_c,
        pse_subtotal_by_group_c,
        pse_subtotal_by_practice_c,
        pse_subtotal_by_region_c,
        pse_time_period_c,
        pse_time_period_types_c,
        pse_type_c,
        system_modstamp,
        pse_deleted_date_c,
        pse_excluded_roles_c

    from source

)

select * from renamed
