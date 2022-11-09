
with source as (

    select * from {{ source('raw_github', 'milestone') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        closed_at,
        created_at,
        creator_id,
        description,
        due_on,
        is_deleted,
        number,
        repository_id,
        state,
        title,
        updated_at

    from source

)

select * from renamed
