
with source as (

    select * from {{ source('raw_github', 'team') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        description,
        name,
        org_id,
        parent_id,
        privacy,
        slug

    from source

)

select * from renamed
