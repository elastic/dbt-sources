
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_tagging_log_c') }}

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
        lean_data_error_details_c,
        lean_data_filter_rules_c,
        lean_data_outcome_c,
        lean_data_serialized_matched_account_c,
        lean_data_serialized_primary_lead_c,
        lean_data_tagging_date_c,
        lean_data_tagging_trigger_c,
        lean_data_tiebreaker_rules_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
