
with source as (

    select * from {{ source('raw_salesforce', 'pse_forecast_enhanced_summary_c') }}

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
        pse_group_c,
        pse_group_plan_c,
        pse_parent_summary_c,
        pse_practice_c,
        pse_practice_plan_c,
        pse_region_c,
        pse_region_plan_c,
        system_modstamp

    from source

)

select * from renamed
