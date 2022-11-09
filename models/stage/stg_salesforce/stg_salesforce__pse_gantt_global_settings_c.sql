
with source as (

    select * from {{ source('raw_salesforce', 'pse_gantt_global_settings_c') }}

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
        name,
        pse_save_project_task_assignment_batch_size_c,
        pse_save_project_task_batch_size_c,
        setup_owner_id,
        system_modstamp,
        pse_show_create_held_resource_request_button_c,
        pse_show_create_resource_requests_button_c,
        pse_respect_sharing_when_editing_a_project_c,
        pse_show_create_assignments_button_c,
        pse_show_milestones_button_c,
        pse_respect_sharing_when_deleting_tasks_c,
        pse_suppress_auto_link_pta_c

    from source

)

select * from renamed
