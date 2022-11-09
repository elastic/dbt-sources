
with source as (

    select * from {{ source('raw_github', 'commit_parent') }}

),

renamed as (

    select
        commit_sha,
        parent_sha,
        _fivetran_synced

    from source

)

select * from renamed
