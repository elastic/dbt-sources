
with source as (

    select * from {{ source('raw_greenhouse', 'job_stage_history') }}

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
        partition_date

    from source

)

select * from renamed
