
with source as (

    select * from {{ source('raw_github', 'pull_request_review_dismissed') }}

),

renamed as (

    select
        pull_request_review_id,
        _fivetran_synced,
        actor_id,
        created_at,
        dismissal_commit_sha,
        dismissal_message,
        state

    from source

)

select * from renamed
