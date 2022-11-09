
with source as (

    select * from {{ source('raw_salesforce', 'pdri_replicate_it_settings_c') }}

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
        pdri_deactivate_deployment_activity_log_c,
        pdri_debug_deployment_c,
        pdri_debug_deployment_email_c,
        pdri_deployment_activity_log_level_c,
        pdri_instance_type_c,
        pdri_no_record_results_c,
        pdri_no_success_record_results_c,
        pdri_object_selector_page_size_c,
        setup_owner_id,
        system_modstamp,
        pdri_deployment_flow_c

    from source

)

select * from renamed
