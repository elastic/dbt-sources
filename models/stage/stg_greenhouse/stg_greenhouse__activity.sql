
with source as (

    select * from {{ source('raw_greenhouse', 'activity') }}

),

renamed as (

    select
        candidate_id,
        id,
        _fivetran_synced,
        body,
        created_at,
        subject,
        user_id

    from source

)

select * from renamed
