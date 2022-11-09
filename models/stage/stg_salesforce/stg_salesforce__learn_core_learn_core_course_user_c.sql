
with source as (

    select * from {{ source('raw_salesforce', 'learn_core_learn_core_course_user_c') }}

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
        learn_core_assigned_date_c,
        learn_core_completion_date_c,
        learn_core_course_created_date_c,
        learn_core_course_id_c,
        learn_core_course_status_c,
        learn_core_course_title_c,
        learn_core_course_user_id_c,
        learn_core_credential_earned_c,
        learn_core_curriculum_id_c,
        learn_core_curriculum_title_c,
        learn_core_due_date_c,
        learn_core_email_c,
        learn_core_first_name_c,
        learn_core_is_overdue_c,
        learn_core_is_pitch_iq_submitted_c,
        learn_core_is_required_c,
        learn_core_last_name_c,
        learn_core_learn_minutes_c,
        learn_core_learn_progress_c,
        learn_core_live_training_c,
        learn_core_pitch_attempts_c,
        learn_core_pitch_score_c,
        learn_core_salesforce_user_c,
        learn_core_test_attempts_c,
        learn_core_test_score_c,
        learn_core_user_id_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
