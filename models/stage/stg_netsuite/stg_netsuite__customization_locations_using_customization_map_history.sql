
with source as (

    select * from {{ source('raw_netsuite', 'customization_locations_using_customization_map_history') }}

),

renamed as (

    select
        customization_id,
        location_id

    from source

)

select * from renamed
