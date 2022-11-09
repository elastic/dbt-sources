
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_mass_convert_lead_c') }}

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
        lean_data_account_c,
        lean_data_contact_role_c,
        lean_data_converted_status_c,
        lean_data_do_not_create_opportunity_c,
        lean_data_is_processed_c,
        lean_data_lead_c,
        lean_data_new_owner_c,
        lean_data_opportunity_c,
        lean_data_start_process_time_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
