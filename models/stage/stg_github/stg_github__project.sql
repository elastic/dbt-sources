
with source as (

    select * from {{ source('raw_github', 'project') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        body,
        created_at,
        creator_id,
        is_deleted,
        name,
        number,
        repository_id,
        state,
        updated_at

    from source

)

select * from renamed
