
with source as (

    select * from {{ source('raw_salesforce', 'csircd_attuswdsfbatch_config_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        csircd_address_dq_c,
        csircd_address_match_c,
        csircd_attus_batch_size_c,
        csircd_attus_guid_c,
        csircd_batch_name_c,
        csircd_client_defined_3_c,
        csircd_corp_name_c,
        csircd_country_field_type_c,
        csircd_error_email_c,
        csircd_host_name_c,
        csircd_list_codes_c,
        csircd_list_codes_extended_c,
        csircd_master_dbupdate_c,
        csircd_record_typesto_send_c,
        csircd_sandbox_send_c,
        csircd_save_data_at_attus_c,
        csircd_send_all_accounts_c,
        csircd_send_all_contacts_c,
        csircd_success_email_c,
        csircd_tolerance_c,
        csircd_url_c,
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
