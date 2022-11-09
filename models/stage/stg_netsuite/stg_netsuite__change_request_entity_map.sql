
with source as (

    select * from {{ source('raw_netsuite', 'change_request_entity_map') }}

),

renamed as (

    select
        change_request_id,
        entity_id

    from source

)

select * from renamed
