
with source as (

    select * from {{ source('raw_greenhouse', 'interview_question') }}

),

renamed as (

    select
        id,
        interview_id,
        _fivetran_synced,
        question

    from source

)

select * from renamed
