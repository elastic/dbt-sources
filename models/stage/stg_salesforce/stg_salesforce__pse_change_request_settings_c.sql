
with source as (

    select * from {{ source('raw_salesforce', 'pse_change_request_settings_c') }}

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
        pse_budget_name_suffix_c,
        pse_create_change_request_field_set_c,
        pse_default_budget_status_c,
        pse_default_budget_type_c,
        pse_include_budget_c,
        pse_opportunity_name_suffix_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
