
with source as (

    select * from {{ source('raw_docebo_internal', 'courses_learningplans') }}

),

renamed as (

    select
        course_id,
        id_path,
        path_name,
        path_description,
        path_code

    from source

)

select * from renamed
