
with source as (

    select * from {{ source('raw_salesforce', 'pse_rss_custom_settings_c') }}

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
        pse_availability_priority_c,
        pse_candidates_can_self_nominate_for_work_c,
        pse_custom_filter_fields_weighting_c,
        pse_filter_fields_priority_c,
        pse_group_weighting_c,
        pse_practice_weighting_c,
        pse_region_weighting_c,
        pse_role_weighting_c,
        pse_skills_priority_c,
        pse_worked_with_customer_weighting_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
