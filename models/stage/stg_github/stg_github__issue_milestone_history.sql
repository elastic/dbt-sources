
with source as (

    select * from {{ source('raw_github', 'issue_milestone_history') }}

),

renamed as (

    select
        issue_id,
        updated_at,
        _fivetran_synced,
        actor_id,
        milestone_id,
        milestoned

    from source

)

select * from renamed
