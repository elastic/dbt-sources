
with source as (

    select * from {{ source('raw_github', 'release') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        author_id,
        body,
        created_at,
        draft,
        name,
        prerelease,
        published_at,
        repository_id,
        tag_name,
        target_commitish,
        updated_at

    from source

)

select * from renamed
