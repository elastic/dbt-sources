
with source as (

    select * from {{ source('raw_salesforce', 'crmfusion_dbr_101_potential_duplicate_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        crmfusion_dbr_101_account_c,
        crmfusion_dbr_101_contact_c,
        crmfusion_dbr_101_duplicate_warning_c,
        crmfusion_dbr_101_generic_display_field_c,
        crmfusion_dbr_101_generic_object_c,
        crmfusion_dbr_101_key_c,
        crmfusion_dbr_101_lead_c,
        crmfusion_dbr_101_scenario_c,
        crmfusion_dbr_101_scenario_type_c,
        crmfusion_dbr_101_warning_id_object_id_c,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        crmfusion_dbr_101_contact_display_field_c,
        crmfusion_dbr_101_duplicate_record_c,
        crmfusion_dbr_101_email_c,
        crmfusion_dbr_101_lead_display_field_c,
        crmfusion_dbr_101_object_type_c,
        crmfusion_dbr_101_phone_c,
        is_rv_account_c

    from source

)

select * from renamed
