
with source as (

    select * from {{ source('raw_salesforce', 'crmfusion_dbr_101_auto_merge_mapping_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        crmfusion_dbr_101_include_in_task_c,
        crmfusion_dbr_101_key_c,
        crmfusion_dbr_101_merge_action_c,
        crmfusion_dbr_101_merge_field_c,
        crmfusion_dbr_101_merge_field_display_c,
        crmfusion_dbr_101_scenario_c,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
