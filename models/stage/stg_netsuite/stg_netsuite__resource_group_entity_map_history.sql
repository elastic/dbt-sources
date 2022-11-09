
with source as (

    select * from {{ source('raw_netsuite', 'resource_group_entity_map_history') }}

),

renamed as (

    select
        entity_id,
        group_id

    from source

)

select * from renamed
