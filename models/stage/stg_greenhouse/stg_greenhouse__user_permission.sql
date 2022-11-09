
with source as (

    select * from {{ source('raw_greenhouse', 'user_permission') }}

),

renamed as (

    select
        id,
        user_id,
        _fivetran_synced,
        job_id,
        user_role_id

    from source

)

select * from renamed
