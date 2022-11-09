
with source as (

    select * from {{ source('raw_salesforce', 'pse_project_task_assignment_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        psa_report_estimated_hours_c,
        psa_report_estimated_hours_per_pta_c,
        pse_allocation_percentage_c,
        pse_assignment_c,
        pse_end_date_c,
        pse_external_resource_c,
        pse_hours_c,
        pse_project_c,
        pse_project_id_c,
        pse_project_task_c,
        pse_project_task_end_date_c,
        pse_project_task_start_date_c,
        pse_resource_c,
        pse_resource_request_c,
        pse_resource_role_c,
        pse_schedule_type_c,
        pse_start_date_c,
        system_modstamp,
        pse_allocation_hours_c,
        psaws_is_resource_current_user_c,
        psaws_status_c

    from source

)

select * from renamed
