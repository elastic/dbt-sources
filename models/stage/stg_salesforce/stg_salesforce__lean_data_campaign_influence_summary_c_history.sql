
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_campaign_influence_summary_c_history') }}

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
        lean_data_campaign_c,
        lean_data_existing_opportunity_amount_c,
        lean_data_last_run_date_c,
        lean_data_new_opportunity_amount_c,
        lean_data_no_results_c,
        lean_data_number_of_accounts_c,
        lean_data_number_of_campaign_members_c,
        lean_data_number_of_contacts_c,
        lean_data_number_of_contacts_with_role_c,
        lean_data_number_of_existing_opportunities_c,
        lean_data_number_of_leads_c,
        lean_data_number_of_new_opportunities_c,
        lean_data_number_of_opportunities_c,
        lean_data_object_type_c,
        lean_data_roi_c,
        lean_data_run_parameters_c,
        lean_data_total_campaign_attribution_c,
        lean_data_total_campaign_member_attribution_c,
        lean_data_total_opportunity_amount_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
