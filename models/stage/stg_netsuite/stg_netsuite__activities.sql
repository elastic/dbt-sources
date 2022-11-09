
with source as (

    select * from {{ source('raw_netsuite', 'activities') }}

),

renamed as (

    select
        access_level,
        activity_id,
        assigned_to_id,
        case_id,
        contact_id,
        date_0,
        date_completed,
        date_created,
        date_last_modified,
        entity_id,
        memo,
        opportunity_id,
        owner_id,
        status,
        title,
        type_0

    from source

)

select * from renamed
