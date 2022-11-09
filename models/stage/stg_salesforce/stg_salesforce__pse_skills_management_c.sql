
with source as (

    select * from {{ source('raw_salesforce', 'pse_skills_management_c') }}

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
        pse_enable_experience_c,
        pse_outdated_skills_threshold_c,
        pse_restrict_skills_and_skill_sets_by_role_c,
        pse_restrict_to_skills_with_existing_rating_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
