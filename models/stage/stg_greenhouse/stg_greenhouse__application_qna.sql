
with source as (

    select * from {{ source('raw_greenhouse', 'application_qna') }}

),

renamed as (

    select
        application_id,
        index,
        _fivetran_synced,
        answer,
        question

    from source

)

select * from renamed
