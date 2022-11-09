
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_opportunity_campaign_member_c_history') }}

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
        lean_data_account_c,
        lean_data_campaign_c,
        lean_data_campaign_member_created_date_c,
        lean_data_campaign_member_status_c,
        lean_data_contact_c,
        lean_data_contact_role_c,
        lean_data_lead_c,
        lean_data_opportunity_c,
        name,
        owner_id,
        system_modstamp,
        lean_data_opportunity_id_c,
        lean_data_temp_weighted_campaign_attribution_c,
        lean_data_temp_weighted_campaign_member_attributio_c

    from source

)

select * from renamed
