
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_upload_lead_c') }}

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
        lean_data_city_c,
        lean_data_company_c,
        lean_data_csv_job_id_c,
        lean_data_csv_row_id_c,
        lean_data_email_c,
        lean_data_first_name_c,
        lean_data_last_name_c,
        lean_data_phone_c,
        lean_data_postal_code_c,
        lean_data_state_c,
        lean_data_street_c,
        lean_data_website_c,
        name,
        owner_id,
        system_modstamp,
        lean_data_source_id_c,
        lean_data_related_lead_c,
        lean_data_dupe_lead_c,
        lean_data_rel_lead_lookup_c,
        lean_data_dupe_contact_c,
        lean_data_other_values_c,
        lean_data_rel_account_lookup_c,
        lean_data_country_c,
        lean_data_new_lead_c,
        lean_data_related_account_c,
        lean_data_dupe_lead_lookup_c,
        lean_data_dupe_contact_lookup_c

    from source

)

select * from renamed
