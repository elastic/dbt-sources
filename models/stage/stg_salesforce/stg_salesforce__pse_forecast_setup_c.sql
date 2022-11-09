
with source as (

    select * from {{ source('raw_salesforce', 'pse_forecast_setup_c') }}

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
        pse_actuals_cutoff_offset_c,
        pse_default_opportunity_curve_c,
        pse_default_project_curve_c,
        pse_is_active_c,
        pse_use_is_services_product_on_opp_product_c,
        pse_use_opportunity_curve_for_products_c,
        system_modstamp

    from source

)

select * from renamed
