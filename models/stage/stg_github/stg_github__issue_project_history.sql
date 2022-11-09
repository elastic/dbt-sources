
with source as (

    select * from {{ source('raw_github', 'issue_project_history') }}

),

renamed as (

    select
        issue_id,
        updated_at,
        _fivetran_synced,
        actor_id,
        card_id,
        column_name,
        previous_column_name,
        project_id,
        removed

    from source

)

select * from renamed
