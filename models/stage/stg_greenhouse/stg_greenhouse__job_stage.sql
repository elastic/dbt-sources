
with source as (

    select * from {{ source('raw_greenhouse', 'job_stage') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_at,
        job_id,
        name,
        updated_at,
        priority,
        active

    from source

)

select * from renamed
