
with source as (

    select * from {{ source('raw_github', 'issue_assignee_history') }}

),

renamed as (

    select
        issue_id,
        updated_at,
        user_id,
        _fivetran_synced,
        assigned,
        assigner_id

    from source

)

select * from renamed
