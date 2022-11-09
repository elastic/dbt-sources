
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_marketing_lead_c_history') }}

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
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        lean_data_city_c,
        lean_data_company_c,
        lean_data_country_c,
        lean_data_email_c,
        lean_data_first_name_c,
        lean_data_job_id_c,
        lean_data_last_matched_at_c,
        lean_data_last_name_c,
        lean_data_ld_lead_reference_c,
        lean_data_lead_source_c,
        lean_data_marketing_sys_created_date_c,
        lean_data_marketing_sys_id_c,
        lean_data_marketing_sys_lead_score_c,
        lean_data_phone_c,
        lean_data_postal_code_c,
        lean_data_state_c,
        lean_data_street_c,
        lean_data_website_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
