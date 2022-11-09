
with source as (

    select * from {{ source('raw_greenhouse', 'interview_question_history') }}

),

renamed as (

    select
        id,
        interview_id,
        _fivetran_synced,
        question,
        partition_date

    from source

)

select * from renamed
