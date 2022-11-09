
with source as (

    select * from {{ source('raw_greenhouse', 'job_post_question_history') }}

),

renamed as (

    select
        index,
        job_post_id,
        _fivetran_synced,
        description,
        label,
        name,
        private,
        required,
        type,
        partition_date

    from source

)

select * from renamed
