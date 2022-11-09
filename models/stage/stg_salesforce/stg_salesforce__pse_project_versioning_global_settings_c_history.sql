
with source as (

    select * from {{ source('raw_salesforce', 'pse_project_versioning_global_settings_c_history') }}

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
        pse_capturing_version_config_name_c,
        pse_create_version_batch_size_c,
        pse_delete_version_batch_size_c,
        pse_vpv_quick_help_resource_c,
        pse_vpv_records_loaded_per_call_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
