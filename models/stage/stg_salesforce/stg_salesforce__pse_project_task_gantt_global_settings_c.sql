
with source as (

    select * from {{ source('raw_salesforce', 'pse_project_task_gantt_global_settings_c') }}

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
        pse_bypass_sharing_settings_during_save_c,
        pse_save_plugin_class_c,
        pse_save_plugin_namespace_c,
        pse_task_dependancy_lag_designation_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
