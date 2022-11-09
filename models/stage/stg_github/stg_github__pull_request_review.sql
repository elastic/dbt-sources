
with source as (

    select * from {{ source('raw_github', 'pull_request_review') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        body,
        commit_sha,
        pull_request_id,
        state,
        submitted_at,
        user_id

    from source

)

select * from renamed
