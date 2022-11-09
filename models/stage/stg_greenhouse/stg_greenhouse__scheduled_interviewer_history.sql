
with source as (

    select * from {{ source('raw_greenhouse', 'scheduled_interviewer_history') }}

),

renamed as (

    select
        interviewer_id,
        scheduled_interview_id,
        _fivetran_synced,
        scorecard_id,
        partition_date

    from source

)

select * from renamed
