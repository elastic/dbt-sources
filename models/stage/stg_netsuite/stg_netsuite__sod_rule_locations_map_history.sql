
with source as (

    select * from {{ source('raw_netsuite', 'sod_rule_locations_map_history') }}

),

renamed as (

    select
        location_id,
        sod_rule_id

    from source

)

select * from renamed
