
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_lead_conversion_c') }}

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
        lean_data_contact_c,
        lean_data_conversion_params_c,
        lean_data_converted_status_c,
        lean_data_do_not_create_opportunity_c,
        lean_data_is_processed_c,
        lean_data_lead_c,
        lean_data_new_owner_id_c,
        lean_data_pending_action_c,
        lean_data_prefer_contact_c,
        lean_data_processing_attempts_c,
        lean_data_serialized_matched_leads_c,
        lean_data_status_c,
        name,
        owner_id,
        system_modstamp,
        lean_data_account_fields_to_update_c,
        lean_data_account_record_type_c

    from source

)

select * from renamed
