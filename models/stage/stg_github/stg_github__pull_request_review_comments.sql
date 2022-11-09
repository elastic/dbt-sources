
with source as (

    select * from {{ source('raw_github', 'pull_request_review_comments') }}

),

renamed as (

    select
        id,
        pull_request_id,
        _fivetran_synced,
        body,
        created_at,
        parent_comment_id,
        pull_request_review_id,
        reaction_minus_count,
        reaction_plus_count,
        updated_at,
        user_id

    from source

)

select * from renamed
