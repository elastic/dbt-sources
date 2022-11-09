
with source as (

    select * from {{ source('raw_github', 'pull_request_ready_for_review_history') }}

),

renamed as (

    select
        created_at,
        pull_request_id,
        _fivetran_synced,
        actor_id,
        ready_for_review

    from source

)

select * from renamed
