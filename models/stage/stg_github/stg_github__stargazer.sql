
with source as (

    select * from {{ source('raw_github', 'stargazer') }}

),

renamed as (

    select
        login,
        repository_id,
        _fivetran_deleted,
        _fivetran_synced,
        starred_at

    from source

)

select * from renamed
