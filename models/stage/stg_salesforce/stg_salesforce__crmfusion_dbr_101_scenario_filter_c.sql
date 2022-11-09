
with source as (

    select * from {{ source('raw_salesforce', 'crmfusion_dbr_101_scenario_filter_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        crmfusion_dbr_101_calculated_value_c,
        crmfusion_dbr_101_data_type_c,
        crmfusion_dbr_101_date_criteria_c,
        crmfusion_dbr_101_datetime_criteria_c,
        crmfusion_dbr_101_display_c,
        crmfusion_dbr_101_field_display_value_c,
        crmfusion_dbr_101_field_name_c,
        crmfusion_dbr_101_not_c,
        crmfusion_dbr_101_object_c,
        crmfusion_dbr_101_operator_c,
        crmfusion_dbr_101_scenario_c,
        crmfusion_dbr_101_values_c,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
