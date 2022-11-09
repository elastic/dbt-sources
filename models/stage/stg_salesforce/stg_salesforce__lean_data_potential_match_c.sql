
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_potential_match_c') }}

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
        lean_data_account_1_name_c,
        lean_data_account_2_name_c,
        lean_data_job_id_c,
        lean_data_match_type_c,
        lean_data_object_1_id_c,
        lean_data_object_1_type_c,
        lean_data_object_2_id_c,
        lean_data_object_2_type_c,
        name,
        owner_id,
        system_modstamp,
        lean_data_contact_2_c,
        lean_data_contact_1_c,
        lean_data_lead_1_c,
        lean_data_account_2_c,
        lean_data_lead_2_c,
        lean_data_account_1_c

    from source

)

select * from renamed
