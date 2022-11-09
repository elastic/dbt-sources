
with source as (

    select * from {{ source('raw_github', 'repo_team') }}

),

renamed as (

    select
        repository_id,
        team_id,
        _fivetran_synced,
        permission

    from source

)

select * from renamed
