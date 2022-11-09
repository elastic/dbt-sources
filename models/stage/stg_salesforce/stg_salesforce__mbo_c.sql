
with source as (

    select * from {{ source('raw_salesforce', 'mbo_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        bd_blended_mbos_c,
        bd_blended_mbos_weighting_c,
        bd_company_bookings_obj_apj_c,
        bd_company_bookings_obj_weighting_c,
        bd_company_bookings_objective_c,
        bd_indirect_influence_actual_c,
        bd_indirect_influence_apj_c,
        bd_indirect_influence_target_c,
        bd_indirect_influence_weighting_c,
        bd_manager_company_bookings_objective_c,
        bd_manager_company_bookings_weighting_c,
        bd_manager_indirect_influence_c,
        bd_manager_indirect_influence_weighting_c,
        bd_oem_bookings_c,
        bd_oem_bookings_weighting_c,
        bd_spiff_tier_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        month_c,
        name,
        owner_id,
        record_type_id,
        sa_kpis_c,
        sdr_culture_community_engagement_c,
        sdr_culture_community_weighting_c,
        sdr_enablement_c,
        sdr_enablement_weighting_c,
        sdr_individual_kpis_c,
        sdr_individual_kpis_weighting_c,
        sdr_manager_build_a_team_c,
        sdr_manager_build_a_team_weighting_c,
        sdr_manager_on_boarding_c,
        sdr_manager_on_boarding_weighting_c,
        sdr_manager_sales_prod_weighting_c,
        sdr_manager_sales_productivity_c,
        sdr_on_boarding_c,
        sdr_pipe_gen_c,
        sdr_pipe_gen_weighting_c,
        sdr_skills_dev_c,
        sdr_skills_dev_weighting_c,
        system_modstamp,
        team_member_c,
        bd_indirect_influence_formula_c

    from source

)

select * from renamed
