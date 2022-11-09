
with source as (

    select * from {{ source('raw_github', 'commit_file') }}

),

renamed as (

    select
        commit_sha,
        filename,
        _fivetran_synced,
        additions,
        changes,
        deletions,
        status

    from source

)

select * from renamed
