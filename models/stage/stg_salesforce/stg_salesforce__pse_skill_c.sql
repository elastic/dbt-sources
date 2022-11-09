
with source as (

    select * from {{ source('raw_salesforce', 'pse_skill_c') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_certification_source_c,
        pse_description_c,
        pse_external_id_c,
        pse_group_c,
        pse_parent_category_c,
        pse_skill_or_certification_c,
        pse_type_c,
        pse_unique_name_c,
        record_type_id,
        system_modstamp,
        pse_hierarchy_key_path_c,
        pse_hierarchy_level_c,
        pse_hierarchy_path_c,
        pse_parent_hierarchy_level_c,
        pse_parent_record_type_c,
        pse_record_type_name_c,
        skills_certifications_id_18_digits_c,
        pse_resource_roles_c

    from source

)

select * from renamed
