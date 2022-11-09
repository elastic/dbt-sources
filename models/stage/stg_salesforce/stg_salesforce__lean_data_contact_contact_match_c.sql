
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_contact_contact_match_c') }}

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
        lean_data_contact_1_account_name_c,
        lean_data_contact_1_id_c,
        lean_data_contact_2_account_name_c,
        lean_data_contact_2_id_c,
        lean_data_match_type_c,
        lean_data_request_id_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
