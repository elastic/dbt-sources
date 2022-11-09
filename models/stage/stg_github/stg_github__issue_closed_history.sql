
with source as (

    select * from {{ source('raw_github', 'issue_closed_history') }}

),

renamed as (

    select
        issue_id,
        updated_at,
        _fivetran_synced,
        actor_id,
        closed,
        commit_sha

    from source

)

select * from renamed
