
with source as (

    select * from {{ source('raw_netsuite', 'entity_role_map') }}

),

renamed as (

    select
        contact_id,
        entity_id,
        role_id

    from source

)

select * from renamed
