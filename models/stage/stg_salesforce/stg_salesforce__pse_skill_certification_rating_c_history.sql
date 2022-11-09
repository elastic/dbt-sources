
with source as (

    select * from {{ source('raw_salesforce', 'pse_skill_certification_rating_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        pse_date_achieved_c,
        pse_evaluation_date_c,
        pse_expiration_date_c,
        pse_last_used_date_c,
        pse_notes_c,
        pse_rating_c,
        pse_resource_c,
        pse_skill_certification_c,
        pse_years_experience_c,
        system_modstamp,
        pse_numerical_rating_c,
        psaws_is_resource_current_user_c,
        psaws_skill_or_certification_c,
        my_skill_rating_c,
        x_18_digit_skills_rating_id_c

    from source

)

select * from renamed
