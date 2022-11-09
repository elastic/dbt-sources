
with source as (

    select * from {{ source('raw_greenhouse', 'candidate_history') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        company,
        coordinator_id,
        created_at,
        custom_australian_citizen_,
        custom_city_state_postal_code,
        custom_country,
        custom_country_and_postal_code_chinese_,
        custom_country_and_postal_code_english_,
        custom_current_salary,
        custom_date_of_birth,
        custom_desired_salary,
        custom_email,
        custom_full_legal_name,
        custom_full_legal_name_chinese_,
        custom_job_title,
        custom_legal_last_family_name,
        custom_lives_in_a_taa_designated_country,
        custom_locality,
        custom_location,
        custom_location_1,
        custom_must_have_skills,
        custom_national_id,
        custom_nationality,
        custom_phone_number,
        custom_place_of_birth,
        custom_postcode,
        custom_prc_id_card_mainland_travel_permit_passport_number,
        custom_prc_national_status,
        custom_preferred_start_date_candidate_1549159277_968739,
        custom_relocation_work_city_state_country,
        custom_street_address,
        custom_work_location_chinese,
        first_name,
        is_private,
        last_activity,
        last_name,
        new_candidate_id,
        photo_url,
        recruiter_id,
        title,
        updated_at,
        custom_preferred_pronoun,
        custom_manager_title_in_english,
        custom_date_of_birth_french_candidate_1554141590_351585,
        custom_candidate_title_in_chinese,
        custom_manager_title_in_chinese,
        custom_contractor_company_dba,
        custom_job_duties_english,
        custom_job_duties_french,
        custom_france_coefficient,
        custom_france_position_level,
        custom_non_compete_countries_in_french,
        custom_nationality_in_french,
        custom_place_of_birth_in_french,
        custom_contractor_job_description,
        custom_countries_unrestricted_to_work,
        custom_sponsorship_work_authorization,
        custom_how_did_you_hear_about_elastic_,
        custom_professional_profile_link_linked_in_github_etc_,
        can_email,
        custom_full_legal_last_name,
        custom_legal_first_name,
        custom_main_legal_last_name,
        partition_date

    from source

)

select * from renamed
