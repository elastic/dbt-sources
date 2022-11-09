
with source as (

    select * from {{ source('raw_docebo_internal', 'session_enrollments') }}

),

renamed as (

    select
        id_session,
        user_id,
        username,
        email,
        first_name,
        last_name,
        enrollment_date,
        completion_date,
        status,
        status_id,
        user_status_id,
        user_status

    from source

)

select * from renamed
