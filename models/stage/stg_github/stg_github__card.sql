
with source as (

    select * from {{ source('raw_github', 'card') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        archived,
        column_id,
        created_at,
        creator_id,
        is_deleted,
        issue_id,
        note,
        updated_at

    from source

)

select * from renamed
