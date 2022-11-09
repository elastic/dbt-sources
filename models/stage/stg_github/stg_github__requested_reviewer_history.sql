
with source as (

    select * from {{ source('raw_github', 'requested_reviewer_history') }}

),

renamed as (

    select
        created_at,
        pull_request_id,
        requested_id,
        _fivetran_synced,
        actor_id,
        removed

    from source

)

select * from renamed
