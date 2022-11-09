
with source as (

    select * from {{ source('raw_github', 'commit') }}

),

renamed as (

    select
        sha,
        _fivetran_synced,
        author_date,
        author_email,
        author_name,
        committer_date,
        committer_email,
        committer_name,
        message,
        repository_id

    from source

)

select * from renamed
