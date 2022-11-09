
with source as (

    select * from {{ source('raw_salesforce', 'fstr_loop_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_business_process_c,
        fstr_campaign_c,
        fstr_case_c,
        fstr_completed_date_c,
        fstr_contract_c,
        fstr_first_iteration_c,
        fstr_iteration_c,
        fstr_lead_c,
        fstr_opportunity_c,
        fstr_parent_object_id_c,
        fstr_pce_step_id_c,
        fstr_test_pce_c,
        id,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        msa_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
