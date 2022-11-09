
with source as (

    select * from {{ source('raw_github', 'issue_referenced') }}

),

renamed as (

    select
        issue_id,
        referenced_at,
        _fivetran_synced,
        actor_id,
        commit_sha

    from source

)

select * from renamed
