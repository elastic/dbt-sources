
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_upload_account_match_c') }}

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
        lean_data_account_id_c,
        lean_data_billing_city_c,
        lean_data_billing_postal_code_c,
        lean_data_billing_state_c,
        lean_data_billing_street_c,
        lean_data_csv_job_id_c,
        lean_data_csv_row_id_c,
        lean_data_match_type_c,
        lean_data_name_c,
        lean_data_phone_c,
        lean_data_shipping_city_c,
        lean_data_shipping_postal_code_c,
        lean_data_shipping_state_c,
        lean_data_shipping_street_c,
        lean_data_website_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
