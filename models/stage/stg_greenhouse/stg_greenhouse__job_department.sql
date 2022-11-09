
with source as (

    select * from {{ source('raw_greenhouse', 'job_department') }}

),

renamed as (

    select
        department_id,
        job_id,
        _fivetran_synced

    from source

)

select * from renamed
