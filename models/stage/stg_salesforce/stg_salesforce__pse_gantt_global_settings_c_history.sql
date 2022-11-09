
with source as (

    select * from {{ source('raw_salesforce', 'pse_gantt_global_settings_c_history') }}

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
        pse_save_project_task_assignment_batch_size_c,
        pse_save_project_task_batch_size_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
