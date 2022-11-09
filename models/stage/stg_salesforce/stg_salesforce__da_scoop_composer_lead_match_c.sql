
with source as (

    select * from {{ source('raw_salesforce', 'da_scoop_composer_lead_match_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        da_scoop_composer_account_id_c,
        da_scoop_composer_account_owner_c,
        da_scoop_composer_account_status_inferred_c,
        da_scoop_composer_convert_c,
        da_scoop_composer_dedupe_key_c,
        da_scoop_composer_lead_created_date_c,
        da_scoop_composer_lead_id_c,
        da_scoop_composer_lead_owner_c,
        da_scoop_composer_lead_source_c,
        da_scoop_composer_lead_status_c,
        da_scoop_composer_matching_company_name_c,
        da_scoop_composer_matching_email_c,
        da_scoop_composer_matching_score_c,
        da_scoop_composer_matching_website_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        da_scoop_composer_lead_key_c,
        da_scoop_composer_is_merged_lead_c,
        da_scoop_composer_is_converted_c

    from source

)

select * from renamed
