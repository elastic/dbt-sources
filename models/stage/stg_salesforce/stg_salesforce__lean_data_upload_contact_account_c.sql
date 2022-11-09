
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_upload_contact_account_c') }}

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
        owner_id,
        system_modstamp,
        lean_data_account_website_c,
        lean_data_account_phone_c,
        lean_data_account_name_c,
        lean_data_csv_row_id_c,
        lean_data_account_id_c,
        lean_data_account_city_c,
        lean_data_contact_id_c,
        lean_data_account_street_c,
        lean_data_account_postal_code_c,
        lean_data_account_state_c,
        lean_data_csv_job_id_c

    from source

)

select * from renamed
