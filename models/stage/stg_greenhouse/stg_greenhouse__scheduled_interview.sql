
with source as (

    select * from {{ source('raw_greenhouse', 'scheduled_interview') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        application_id,
        created_at,
        end,
        interview_id,
        location,
        organizer_id,
        start,
        status,
        updated_at

    from source

)

select * from renamed
