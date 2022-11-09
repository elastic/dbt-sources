
with source as (

    select * from {{ source('raw_greenhouse', 'interview_history') }}

),

renamed as (

    select
        id,
        job_stage_id,
        _fivetran_synced,
        interview_kit_content,
        name,
        partition_date

    from source

)

select * from renamed
