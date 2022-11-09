
with source as (

    select * from {{ source('raw_greenhouse', 'job_application') }}

),

renamed as (

    select
        application_id,
        job_id,
        _fivetran_synced

    from source

)

select * from renamed
