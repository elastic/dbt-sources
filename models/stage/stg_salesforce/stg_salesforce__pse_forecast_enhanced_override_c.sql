
with source as (

    select * from {{ source('raw_salesforce', 'pse_forecast_enhanced_override_c') }}

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
        pse_forecast_enhanced_calculation_c,
        pse_forecast_enhanced_detail_category_c,
        pse_forecast_enhanced_summary_category_c,
        pse_group_c,
        pse_is_active_c,
        pse_notes_c,
        pse_opportunity_c,
        pse_override_value_c,
        pse_practice_c,
        pse_project_c,
        pse_region_c,
        system_modstamp

    from source

)

select * from renamed
