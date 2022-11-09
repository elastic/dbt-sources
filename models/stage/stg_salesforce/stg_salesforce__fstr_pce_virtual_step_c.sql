
with source as (

    select * from {{ source('raw_salesforce', 'fstr_pce_virtual_step_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_business_account_c,
        fstr_business_process_c,
        fstr_campaign_c,
        fstr_case_c,
        fstr_client_c,
        fstr_completed_date_c,
        fstr_contract_c,
        fstr_definition_lookup_c,
        fstr_description_c,
        fstr_due_date_c,
        fstr_first_created_c,
        fstr_generated_step_id_c,
        fstr_is_generated_step_c,
        fstr_iteration_c,
        fstr_lead_c,
        fstr_link_c,
        fstr_opportunity_c,
        fstr_stage_lookup_c,
        fstr_status_c,
        fstr_step_lookup_c,
        fstr_subject_c,
        fstr_unique_id_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
