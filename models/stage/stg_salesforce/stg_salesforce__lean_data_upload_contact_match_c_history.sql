
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_upload_contact_match_c_history') }}

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
        lean_data_account_name_c,
        lean_data_contact_city_c,
        lean_data_contact_email_2_c,
        lean_data_contact_email_c,
        lean_data_contact_first_name_c,
        lean_data_contact_id_c,
        lean_data_contact_last_name_c,
        lean_data_contact_phone_c,
        lean_data_contact_postal_code_c,
        lean_data_contact_state_c,
        lean_data_contact_street_c,
        lean_data_csv_job_id_c,
        lean_data_csv_row_id_c,
        lean_data_match_type_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
