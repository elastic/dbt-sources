
with source as (

    select * from {{ source('raw_docebo_internal', 'courses_training_material') }}

),

renamed as (

    select
        course_id,
        id,
        name,
        attempts

    from source

)

select * from renamed
