
with source as (

    select * from {{ source('raw_salesforce', 'pse_version_item_estimates_vs_actuals_c_history') }}

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
        name,
        pse_actual_days_c,
        pse_actual_hours_c,
        pse_assignment_id_c,
        pse_assignment_name_c,
        pse_end_date_c,
        pse_estimated_days_c,
        pse_estimated_hours_c,
        pse_estimates_vs_actuals_name_c,
        pse_original_created_by_id_c,
        pse_original_created_by_name_c,
        pse_original_created_date_c,
        pse_original_id_c,
        pse_original_last_modified_by_id_c,
        pse_original_last_modified_by_name_c,
        pse_original_last_modified_date_c,
        pse_original_owner_id_c,
        pse_original_owner_name_c,
        pse_resource_id_c,
        pse_resource_name_c,
        pse_start_date_c,
        pse_time_period_id_c,
        pse_time_period_name_c,
        pse_time_period_type_c,
        pse_version_c,
        system_modstamp

    from source

)

select * from renamed
