
with source as (

    select * from {{ source('raw_greenhouse', 'job_application_history') }}

),

renamed as (

    select
        application_id,
        job_id,
        _fivetran_synced,
        partition_date

    from source

)

select * from renamed
