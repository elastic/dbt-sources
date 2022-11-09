
with source as (

    select * from {{ source('raw_github', 'issue_comment') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        body,
        created_at,
        issue_id,
        updated_at,
        user_id

    from source

)

select * from renamed
