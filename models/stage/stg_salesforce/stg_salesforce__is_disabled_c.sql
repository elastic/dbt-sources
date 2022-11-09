
with source as (

    select * from {{ source('raw_salesforce', 'is_disabled_c') }}

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
        non_consolidated_opp_triggered_logic_c,
        opportunity_trigger_c,
        setup_owner_id,
        system_modstamp,
        mql_new_lead_score_c,
        quote_trigger_c,
        ironclad_contract_c,
        ironclad_workflow_c,
        clm_agreement_family_c

    from source

)

select * from renamed
