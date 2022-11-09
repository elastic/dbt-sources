
with source as (

    select * from {{ source('raw_netsuite_sa', 'notification_tracker_beta_history') }}

),

renamed as (

    select
        notification_tracker_beta_id,
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
        notification_tracker_beta_exti,
        notification_tracker_beta_name,
        notification_type_id,
        parent_id,
        recipient_email_address,
        recipient_internal_id,
        partition_date

    from source

)

select * from renamed
