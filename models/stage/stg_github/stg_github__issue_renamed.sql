
with source as (

    select * from {{ source('raw_github', 'issue_renamed') }}

),

renamed as (

    select
        issue_id,
        updated_at,
        _fivetran_synced,
        actor_id,
        from_name,
        to_name

    from source

)

select * from renamed
