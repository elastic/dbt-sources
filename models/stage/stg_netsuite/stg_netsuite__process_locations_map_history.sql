
with source as (

    select * from {{ source('raw_netsuite', 'process_locations_map_history') }}

),

renamed as (

    select
        location_id,
        process_id

    from source

)

select * from renamed
