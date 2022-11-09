
with source as (

    select * from {{ source('raw_greenhouse', 'interview') }}

),

renamed as (

    select
        id,
        job_stage_id,
        _fivetran_synced,
        interview_kit_content,
        name

    from source

)

select * from renamed
