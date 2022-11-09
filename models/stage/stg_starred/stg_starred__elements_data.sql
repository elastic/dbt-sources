
with source as (

    select * from {{ source('raw_starred', 'elements_data') }}

),

renamed as (

    select
        form_id,
        rating_id,
        element_id,
        question_id,
        subject,
        question,
        response,
        response_comment

    from source

)

select * from renamed
