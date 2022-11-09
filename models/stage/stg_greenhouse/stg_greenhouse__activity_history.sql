
with source as (

    select * from {{ source('raw_greenhouse', 'activity_history') }}

),

renamed as (

    select
        candidate_id,
        id,
        _fivetran_synced,
        body,
        created_at,
        subject,
        user_id,
        partition_date

    from source

)

select * from renamed
