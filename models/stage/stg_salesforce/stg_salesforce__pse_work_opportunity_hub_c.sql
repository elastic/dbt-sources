
with source as (

    select * from {{ source('raw_salesforce', 'pse_work_opportunity_hub_c') }}

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
        pse_candidates_can_self_nominate_for_work_c,
        pse_filter_by_primary_skill_c,
        pse_filter_by_resource_group_c,
        pse_filter_by_resource_practice_c,
        pse_filter_by_resource_region_c,
        pse_filter_by_resource_role_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
