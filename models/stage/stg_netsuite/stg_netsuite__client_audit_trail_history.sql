
with source as (

    select * from {{ source('raw_netsuite', 'client_audit_trail_history') }}

),

renamed as (

    select
        client_audit_trail_extid,
        client_audit_trail_id,
        date_created,
        details,
        event_id,
        is_inactive,
        last_modified_date,
        parent_id,
        title,
        type_id,
        user_id

    from source

)

select * from renamed
