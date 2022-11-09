
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_training_survey_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        learndot_come_again_rating_c,
        learndot_comments_c,
        learndot_facilities_amenities_rating_c,
        learndot_facilities_equipment_rating_c,
        learndot_facilities_location_rating_c,
        learndot_id_c,
        learndot_instructor_knowledge_rating_c,
        learndot_instructor_pace_rating_c,
        learndot_instructor_presentation_rating_c,
        learndot_instructor_questions_rating_c,
        learndot_instructor_skills_rating_c,
        learndot_learndot_event_c,
        learndot_overall_rating_c,
        learndot_participant_c,
        learndot_recommend_rating_c,
        learndot_submitted_c,
        learndot_testimonials_c,
        learndot_training_curriculum_rating_c,
        learndot_training_expectations_rating_c,
        learndot_training_labs_rating_c,
        learndot_training_objectives_rating_c,
        learndot_training_organized_rating_c,
        learndot_training_overall_rating_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
