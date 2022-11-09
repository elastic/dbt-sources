
with source as (

    select * from {{ source('raw_pingboard', 'groups_history') }}

),

renamed as (

    select
        id,
        next_href,
        last_href,
        created_at,
        updated_at,
        name,
        description,
        memberships_count,
        type

    from source

)

select * from renamed
