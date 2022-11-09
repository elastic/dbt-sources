
with source as (

    select * from {{ source('raw_salesforce', 'ci_account_model_config_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_weight_c,
        additional_instances_c,
        attribution_for_account_contacts_only_c,
        close_date_cutoff_c,
        created_by_id,
        created_date,
        currency_field_name_c,
        currency_iso_code,
        date_filter_c,
        enabled_c,
        include_zero_amount_influence_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        lead_account_lookup_field_c,
        lead_response_weight_c,
        name,
        search_days_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
