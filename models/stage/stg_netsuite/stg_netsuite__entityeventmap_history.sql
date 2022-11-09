
with source as (

    select * from {{ source('raw_netsuite', 'entityeventmap_history') }}

),

renamed as (

    select
        attendee_status_id,
        entity_id,
        event_id,
        resource_id,
        status_id

    from source

)

select * from renamed
