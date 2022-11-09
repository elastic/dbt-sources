
with source as (

    select * from {{ source('raw_netsuite', 'entityterritorymap_history') }}

),

renamed as (

    select
        entity_id,
        territory_id

    from source

)

select * from renamed
