
with source as (

    select * from {{ source('raw_salesforce', 'csircd_attuswdsfconfig_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        csircd_account_record_types_c,
        csircd_address_dq_c,
        csircd_address_match_c,
        csircd_attus_guid_c,
        csircd_corp_name_c,
        csircd_host_name_c,
        csircd_list_codes_c,
        csircd_list_codes_extended_c,
        csircd_lookup_accounts_c,
        csircd_lookup_contacts_c,
        csircd_lookup_leads_c,
        csircd_save_data_at_attus_c,
        csircd_tolerance_c,
        csircd_update_master_db_c,
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
