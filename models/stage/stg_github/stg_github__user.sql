
with source as (

    select * from {{ source('raw_github', 'user') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        bio,
        blog,
        company,
        created_at,
        hireable,
        location,
        login,
        name,
        site_admin,
        type,
        updated_at

    from source

)

select * from renamed
