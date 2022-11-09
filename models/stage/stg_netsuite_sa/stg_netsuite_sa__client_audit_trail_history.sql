
with source as (

    select * from {{ source('raw_netsuite_sa', 'client_audit_trail_history') }}

),

renamed as (

    select
        client_audit_trail_id,
        _fivetran_deleted,
        _fivetran_synced,
        client_audit_trail_extid,
        date_created,
        date_deleted,
        details,
        event_id,
        is_inactive,
        last_modified_date,
        parent_id,
        title,
        type_id,
        user_id,
        partition_date

    from source

)

select * from renamed
