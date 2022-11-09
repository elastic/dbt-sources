
with source as (

    select * from {{ source('raw_salesforce', 'crmfusion_dbr_101_duplicate_warning_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        crmfusion_dbr_101_action_c,
        crmfusion_dbr_101_key_c,
        crmfusion_dbr_101_scenario_c,
        crmfusion_dbr_101_scenario_type_c,
        crmfusion_dbr_101_unused_datetime_c,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        system_modstamp

    from source

)

select * from renamed
