
with source as (

    select * from {{ source('raw_netsuite', 'subsidiary_location_map') }}

),

renamed as (

    select
        location_id,
        subsidiary_id

    from source

)

select * from renamed
