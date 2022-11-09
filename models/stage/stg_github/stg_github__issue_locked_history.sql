
with source as (

    select * from {{ source('raw_github', 'issue_locked_history') }}

),

renamed as (

    select
        issue_id,
        updated_at,
        _fivetran_synced,
        actor_id,
        locked

    from source

)

select * from renamed
