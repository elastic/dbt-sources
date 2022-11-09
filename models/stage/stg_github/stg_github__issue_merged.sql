
with source as (

    select * from {{ source('raw_github', 'issue_merged') }}

),

renamed as (

    select
        commit_sha,
        issue_id,
        merged_at,
        _fivetran_synced,
        actor_id

    from source

)

select * from renamed
