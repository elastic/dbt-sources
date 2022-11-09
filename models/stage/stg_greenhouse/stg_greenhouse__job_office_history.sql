
with source as (

    select * from {{ source('raw_greenhouse', 'job_office_history') }}

),

renamed as (

    select
        job_id,
        office_id,
        _fivetran_synced,
        partition_date

    from source

)

select * from renamed
