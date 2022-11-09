
with source as (

    select * from {{ source('raw_salesforce', 'pse_project_task_dependency_c_history') }}

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
        pse_cross_project_c,
        pse_dependency_display_units_c,
        pse_dependent_task_c,
        pse_dependent_task_end_date_c,
        pse_dependent_task_end_date_time_c,
        pse_dependent_task_start_date_c,
        pse_dependent_task_start_date_time_c,
        pse_lag_time_hours_c,
        pse_lag_units_c,
        pse_new_dependency_record_c,
        pse_preceding_task_c,
        pse_preceding_task_end_date_c,
        pse_preceding_task_end_date_time_c,
        pse_preceding_task_start_date_c,
        pse_preceding_task_start_date_time_c,
        pse_project_c,
        pse_type_c,
        system_modstamp

    from source

)

select * from renamed
