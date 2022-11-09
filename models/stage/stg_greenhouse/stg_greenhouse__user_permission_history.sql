
with source as (

    select * from {{ source('raw_greenhouse', 'user_permission_history') }}

),

renamed as (

    select
        id,
        user_id,
        _fivetran_synced,
        job_id,
        user_role_id,
        partition_date

    from source

)

select * from renamed
