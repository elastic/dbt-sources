
with source as (

    select * from {{ source('raw_netsuite', 'entity_status') }}

),

renamed as (

    select
        date_last_modified,
        description,
        entity_status_extid,
        entity_status_id,
        isinactive,
        name,
        probability,
        read_only,
        type_0

    from source

)

select * from renamed
