
with source as (

    select * from {{ source('raw_netsuite', 'notification_tracker_beta') }}

),

renamed as (

    select
        auto_run,
        customization_update_done,
        date_created,
        date_sent,
        inactive_owner_and_search_map,
        is_inactive,
        last_modified_date,
        notification_tracker_beta_exti,
        notification_tracker_beta_id,
        notification_tracker_beta_name,
        notification_type_id,
        parent_id,
        recipient_email_address,
        recipient_internal_id

    from source

)

select * from renamed
