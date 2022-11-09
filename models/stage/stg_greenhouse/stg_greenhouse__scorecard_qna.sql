
with source as (

    select * from {{ source('raw_greenhouse', 'scorecard_qna') }}

),

renamed as (

    select
        index,
        scorecard_id,
        _fivetran_synced,
        answer,
        id,
        question

    from source

)

select * from renamed
