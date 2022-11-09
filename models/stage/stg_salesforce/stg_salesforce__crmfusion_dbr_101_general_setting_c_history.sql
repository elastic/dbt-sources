
with source as (

    select * from {{ source('raw_salesforce', 'crmfusion_dbr_101_general_setting_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        crmfusion_dbr_101_boolean_value_c,
        crmfusion_dbr_101_numeric_value_c,
        crmfusion_dbr_101_string_value_c,
        crmfusion_dbr_101_type_c,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
