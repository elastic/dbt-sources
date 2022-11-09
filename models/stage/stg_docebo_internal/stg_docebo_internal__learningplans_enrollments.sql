
with source as (

    select * from {{ source('raw_docebo_internal', 'learningplans_enrollments') }}

),

renamed as (

    select
        user_id,
        username,
        learning_plan_id,
        learning_plan_name,
        learning_plan_code,
        enrollment_created_by,
        enrollment_created_at,
        enrollment_validity_begin_date,
        enrollment_validity_end_date,
        enrollment_date_last_updated

    from source

)

select * from renamed
