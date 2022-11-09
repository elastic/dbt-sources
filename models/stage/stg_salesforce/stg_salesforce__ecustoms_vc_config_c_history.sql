
with source as (

    select * from {{ source('raw_salesforce', 'ecustoms_vc_config_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ecustoms_a_address_fields_c,
        ecustoms_a_address_type_c,
        ecustoms_a_bus_c,
        ecustoms_a_city_trigger_c,
        ecustoms_a_country_trigger_c,
        ecustoms_a_frender_c,
        ecustoms_a_fs_c,
        ecustoms_a_fuzzy_level_c,
        ecustoms_a_motr_c,
        ecustoms_a_render_c,
        ecustoms_a_screening_trigger_c,
        ecustoms_a_search_type_c,
        ecustoms_a_state_trigger_c,
        ecustoms_a_stem_c,
        ecustoms_a_thes_c,
        ecustoms_account_city_field_map_c,
        ecustoms_account_company_field_map_c,
        ecustoms_account_country_field_map_c,
        ecustoms_account_name_field_map_c,
        ecustoms_account_state_field_map_c,
        ecustoms_as_groups_c,
        ecustoms_as_modes_c,
        ecustoms_c_address_fields_c,
        ecustoms_c_bus_c,
        ecustoms_c_city_trigger_c,
        ecustoms_c_country_trigger_c,
        ecustoms_c_frender_c,
        ecustoms_c_fs_c,
        ecustoms_c_fuzzy_level_c,
        ecustoms_c_motr_c,
        ecustoms_c_render_c,
        ecustoms_c_screening_trigger_c,
        ecustoms_c_search_type_c,
        ecustoms_c_state_trigger_c,
        ecustoms_c_stem_c,
        ecustoms_c_thes_c,
        ecustoms_contact_city_field_map_c,
        ecustoms_contact_company_field_map_c,
        ecustoms_contact_country_field_map_c,
        ecustoms_contact_name_field_map_c,
        ecustoms_contact_state_field_map_c,
        ecustoms_core_c,
        ecustoms_cs_groups_c,
        ecustoms_cs_modes_c,
        ecustoms_enable_accounts_c,
        ecustoms_enable_contacts_c,
        ecustoms_enable_leads_c,
        ecustoms_error_notification_email_c,
        ecustoms_imw_catchup_date_c,
        ecustoms_imw_catchup_run_date_c,
        ecustoms_imwcatchup_c,
        ecustoms_l_address_fields_c,
        ecustoms_l_bus_c,
        ecustoms_l_city_trigger_c,
        ecustoms_l_country_trigger_c,
        ecustoms_l_frender_c,
        ecustoms_l_fs_c,
        ecustoms_l_fuzzy_level_c,
        ecustoms_l_motr_c,
        ecustoms_l_render_c,
        ecustoms_l_screening_trigger_c,
        ecustoms_l_search_type_c,
        ecustoms_l_state_trigger_c,
        ecustoms_l_stem_c,
        ecustoms_l_thes_c,
        ecustoms_lead_city_field_map_c,
        ecustoms_lead_company_field_map_c,
        ecustoms_lead_country_field_map_c,
        ecustoms_lead_name_field_map_c,
        ecustoms_lead_state_field_map_c,
        ecustoms_ls_groups_c,
        ecustoms_ls_modes_c,
        ecustoms_number_c,
        ecustoms_password_c,
        ecustoms_sandbox_c,
        ecustoms_suspend_screening_c,
        ecustoms_track_compliance_history_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed