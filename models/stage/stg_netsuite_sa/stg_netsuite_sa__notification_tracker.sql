
with source as (

    select * from {{ source('raw_netsuite_sa', 'notification_tracker') }}

),

renamed as (

    select
        notification_tracker_id,
        _fivetran_deleted,
        _fivetran_synced,
        auto_run,
        customization_update_done,
        date_created,
        date_deleted,
        date_sent,
        inactive_owner_and_search_map,
        is_inactive,
        last_modified_date,
        notification_tracker_extid,
        notification_tracker_name,
        notification_type_id,
        parent_id,
        recipient_email_address,
        recipient_internal_id

    from source

)

select * from renamed
