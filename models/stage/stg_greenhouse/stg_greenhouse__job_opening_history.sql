
with source as (

    select * from {{ source('raw_greenhouse', 'job_opening_history') }}

),

renamed as (

    select
        id,
        job_id,
        _fivetran_synced,
        application_id,
        close_reason_id,
        closed_at,
        opened_at,
        opening_id,
        status,
        partition_date

    from source

)

select * from renamed
