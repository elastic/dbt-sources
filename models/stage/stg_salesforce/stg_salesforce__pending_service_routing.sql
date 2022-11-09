
with source as (

    select * from {{ source('raw_salesforce', 'pending_service_routing') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        capacity_percentage,
        capacity_weight,
        created_by_id,
        created_date,
        currency_iso_code,
        custom_requested_date_time,
        drop_additional_skills_timeout,
        group_id,
        is_deleted,
        is_owner_change_initiated,
        is_preferred_user_required,
        is_push_attempted,
        is_pushed,
        is_ready_for_routing,
        is_status_change_initiated,
        is_transfer,
        last_declined_agent_session,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        preferred_user_id,
        push_timeout,
        queue_id,
        routing_model,
        routing_priority,
        routing_type,
        serial,
        service_channel_id,
        system_modstamp,
        work_item_id

    from source

)

select * from renamed
