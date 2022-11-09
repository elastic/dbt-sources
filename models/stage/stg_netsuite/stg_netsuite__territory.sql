
with source as (

    select * from {{ source('raw_netsuite', 'territory') }}

),

renamed as (

    select
        date_last_modified,
        description,
        is_inactive,
        name,
        territory_id

    from source

)

select * from renamed
