
with source as (

    select * from {{ source('raw_greenhouse', 'hiring_team') }}

),

renamed as (

    select
        job_id,
        role,
        user_id,
        _fivetran_synced

    from source

)

select * from renamed
