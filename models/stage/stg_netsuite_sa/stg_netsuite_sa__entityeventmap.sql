
with source as (

    select * from {{ source('raw_netsuite_sa', 'entityeventmap') }}

),

renamed as (

    select
        _fivetran_id,
        event_id,
        _fivetran_synced,
        attendee_status_id,
        entity_id,
        resource_id,
        status_id,
        _fivetran_id2,
        _fivetran_deleted,
        date_deleted,
        fivetran_index

    from source

)

select * from renamed
