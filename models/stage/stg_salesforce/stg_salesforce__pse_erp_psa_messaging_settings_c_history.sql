
with source as (

    select * from {{ source('raw_salesforce', 'pse_erp_psa_messaging_settings_c_history') }}

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
        name,
        pse_absence_filter_field_c,
        pse_absence_filter_values_c,
        pse_absence_request_project_c,
        pse_automatically_approve_api_timecards_c,
        pse_create_records_as_active_resources_c,
        pse_update_resource_employment_dates_c,
        pse_worker_account_filter_field_c,
        pse_worker_account_filter_values_c,
        pse_worker_filter_field_c,
        pse_worker_filter_values_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
