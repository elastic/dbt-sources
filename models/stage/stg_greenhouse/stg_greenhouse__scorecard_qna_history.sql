
with source as (

    select * from {{ source('raw_greenhouse', 'scorecard_qna_history') }}

),

renamed as (

    select
        index,
        scorecard_id,
        _fivetran_synced,
        answer,
        id,
        question,
        partition_date

    from source

)

select * from renamed
