
with source as (

    select * from {{ source('raw_salesforce', 'fstr_pce_approval_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_business_process_c,
        fstr_campaign_c,
        fstr_case_c,
        fstr_definition_c,
        fstr_is_complete_c,
        fstr_lead_c,
        fstr_opportunity_c,
        fstr_percent_complete_c,
        fstr_process_record_id_c,
        fstr_step_c,
        fstr_step_object_c,
        fstr_total_complete_c,
        fstr_total_items_c,
        fstr_total_reject_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
