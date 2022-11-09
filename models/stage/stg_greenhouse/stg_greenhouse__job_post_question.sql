
with source as (

    select * from {{ source('raw_greenhouse', 'job_post_question') }}

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
        type

    from source

)

select * from renamed
