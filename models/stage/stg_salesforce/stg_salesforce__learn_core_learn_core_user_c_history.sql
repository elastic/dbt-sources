
with source as (

    select * from {{ source('raw_salesforce', 'learn_core_learn_core_user_c_history') }}

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
        learn_core_courses_assigned_c,
        learn_core_courses_complete_c,
        learn_core_email_c,
        learn_core_first_name_c,
        learn_core_last_name_c,
        learn_core_learn_core_created_date_time_c,
        learn_core_learn_core_id_c,
        learn_core_lessons_completed_c,
        learn_core_overdue_published_courses_c,
        learn_core_permission_c,
        learn_core_pitch_average_c,
        learn_core_pitches_assigned_c,
        learn_core_pitches_submitted_c,
        learn_core_salesforce_user_c,
        learn_core_status_c,
        learn_core_test_average_c,
        learn_core_tests_assigned_c,
        learn_core_tests_taken_c,
        name,
        owner_id,
        system_modstamp,
        of_courses_completed_c

    from source

)

select * from renamed
