
with source as (

    select * from {{ source('raw_greenhouse', 'job_office') }}

),

renamed as (

    select
        job_id,
        office_id,
        _fivetran_synced

    from source

)

select * from renamed
