
with source as (

    select * from {{ source('raw_salesforce', 'pse_forecast_summary_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        pse_category_1_c,
        pse_category_2_c,
        pse_category_3_c,
        pse_category_4_c,
        pse_category_5_c,
        pse_category_6_c,
        pse_category_7_c,
        pse_forecast_calculation_c,
        pse_group_c,
        pse_group_plan_c,
        pse_opportunities_category_1_c,
        pse_opportunities_category_2_c,
        pse_opportunities_category_3_c,
        pse_opportunities_category_4_c,
        pse_opportunities_category_5_c,
        pse_opportunities_category_6_c,
        pse_opportunities_category_7_c,
        pse_override_category_1_c,
        pse_override_category_2_c,
        pse_override_category_3_c,
        pse_override_category_4_c,
        pse_override_category_5_c,
        pse_override_category_6_c,
        pse_override_category_7_c,
        pse_percent_override_category_1_c,
        pse_percent_override_category_2_c,
        pse_percent_override_category_3_c,
        pse_percent_override_category_4_c,
        pse_percent_override_category_5_c,
        pse_percent_override_category_6_c,
        pse_percent_override_category_7_c,
        pse_practice_c,
        pse_practice_plan_c,
        pse_projects_category_1_c,
        pse_projects_category_2_c,
        pse_projects_category_3_c,
        pse_projects_category_4_c,
        pse_projects_category_5_c,
        pse_projects_category_6_c,
        pse_projects_category_7_c,
        pse_region_c,
        pse_region_plan_c,
        pse_sublevels_category_1_c,
        pse_sublevels_category_2_c,
        pse_sublevels_category_3_c,
        pse_sublevels_category_4_c,
        pse_sublevels_category_5_c,
        pse_sublevels_category_6_c,
        pse_sublevels_category_7_c,
        system_modstamp

    from source

)

select * from renamed
