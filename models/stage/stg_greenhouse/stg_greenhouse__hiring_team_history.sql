
with source as (

    select * from {{ source('raw_greenhouse', 'hiring_team_history') }}

),

renamed as (

    select
        job_id,
        role,
        user_id,
        _fivetran_synced,
        partition_date

    from source

)

select * from renamed
