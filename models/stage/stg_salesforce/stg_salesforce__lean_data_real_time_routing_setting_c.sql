
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_real_time_routing_setting_c') }}

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
        lean_data_account_enabled_c,
        lean_data_account_insert_threshold_c,
        lean_data_account_update_threshold_c,
        lean_data_campaign_member_enabled_c,
        lean_data_campaign_member_insert_threshold_c,
        lean_data_campaign_member_update_threshold_c,
        lean_data_case_enabled_c,
        lean_data_case_insert_threshold_c,
        lean_data_case_update_threshold_c,
        lean_data_contact_enabled_c,
        lean_data_contact_insert_threshold_c,
        lean_data_contact_update_threshold_c,
        lean_data_event_insert_threshold_c,
        lean_data_lead_enabled_c,
        lean_data_lead_insert_threshold_c,
        lean_data_lead_update_threshold_c,
        lean_data_opportunity_enabled_c,
        lean_data_opportunity_insert_threshold_c,
        lean_data_opportunity_update_threshold_c,
        lean_data_task_insert_threshold_c,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
