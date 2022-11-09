
with source as (

    select * from {{ source('raw_salesforce', 'pse_forecast_enhanced_summary_category_c') }}

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
        pse_adjusted_value_c,
        pse_category_label_c,
        pse_forecast_enhanced_override_c,
        pse_forecast_enhanced_summary_c,
        pse_forecast_opportunities_value_c,
        pse_forecast_projects_value_c,
        pse_forecast_setup_category_c,
        pse_forecast_sublevels_value_c,
        pse_forecast_value_c,
        pse_override_created_by_c,
        pse_override_created_date_c,
        pse_override_notes_c,
        pse_override_rollup_variance_c,
        pse_override_value_c,
        system_modstamp

    from source

)

select * from renamed
