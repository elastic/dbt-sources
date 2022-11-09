
with source as (

    select * from {{ source('raw_salesforce', 'fcrm_me_match_configuration_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fcrm_active_c,
        fcrm_app_defined_type_c,
        fcrm_application_c,
        fcrm_component_class_c,
        fcrm_component_instance_name_c,
        fcrm_component_order_c,
        fcrm_component_type_c,
        fcrm_config_info_1_c,
        fcrm_configuration_date_c,
        fcrm_configuration_error_c,
        fcrm_configuration_set_name_c,
        fcrm_description_c,
        fcrm_snapshot_c,
        fcrm_summary_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
