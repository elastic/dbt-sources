
with source as (

    select * from {{ source('raw_greenhouse', 'application_qna_history') }}

),

renamed as (

    select
        application_id,
        index,
        _fivetran_synced,
        answer,
        question,
        partition_date

    from source

)

select * from renamed
