
with source as (

    select * from {{ source('raw_github', 'pull_request') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        base_label,
        base_ref,
        base_repo_id,
        base_sha,
        base_user_id,
        head_label,
        head_ref,
        head_repo_id,
        head_sha,
        head_user_id,
        issue_id,
        merge_commit_sha,
        draft

    from source

)

select * from renamed
