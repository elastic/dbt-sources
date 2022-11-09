
with source as (

    select * from {{ source('raw_greenhouse', 'job_department_history') }}

),

renamed as (

    select
        department_id,
        job_id,
        _fivetran_synced,
        partition_date

    from source

)

select * from renamed
