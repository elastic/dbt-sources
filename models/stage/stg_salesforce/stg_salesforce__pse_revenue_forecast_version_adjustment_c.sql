
with source as (

    select * from {{ source('raw_salesforce', 'pse_revenue_forecast_version_adjustment_c') }}

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
        pse_active_c,
        pse_corp_adjustment_value_c,
        pse_corp_currency_c,
        pse_group_c,
        pse_practice_c,
        pse_region_c,
        pse_revenue_forecast_version_c,
        pse_time_period_c,
        pse_unique_identifier_c,
        system_modstamp,
        pse_exchange_rate_c,
        pse_project_c,
        pse_milestone_c,
        pse_opportunity_c,
        pse_notes_c,
        pse_scenario_c

    from source

)

select * from renamed
