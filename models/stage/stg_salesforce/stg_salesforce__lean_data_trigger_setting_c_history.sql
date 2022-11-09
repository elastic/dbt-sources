
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_trigger_setting_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        lean_data_account_trigger_enabled_c,
        lean_data_case_trigger_enabled_c,
        lean_data_contact_trigger_enabled_c,
        lean_data_lead_trigger_enabled_c,
        lean_data_opportunity_trigger_enabled_c,
        lean_data_user_trigger_enabled_c,
        name,
        setup_owner_id,
        system_modstamp,
        lean_data_campaign_member_trigger_enabled_c

    from source

)

select * from renamed
