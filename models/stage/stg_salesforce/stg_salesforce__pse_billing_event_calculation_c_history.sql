
with source as (

    select * from {{ source('raw_salesforce', 'pse_billing_event_calculation_c_history') }}

),

renamed as (

    select
        partitiontime,
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
        pse_account_c,
        pse_configuration_c,
        pse_group_c,
        pse_include_prior_periods_c,
        pse_locale_information_c,
        pse_practice_c,
        pse_project_c,
        pse_region_c,
        pse_time_period_c,
        system_modstamp

    from source

)

select * from renamed
