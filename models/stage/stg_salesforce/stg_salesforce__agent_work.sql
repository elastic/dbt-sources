
with source as (

    select * from {{ source('raw_salesforce', 'agent_work') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        accept_date_time,
        active_time,
        agent_capacity_when_declined,
        assigned_date_time,
        cancel_date_time,
        capacity_model,
        capacity_percentage,
        capacity_weight,
        close_date_time,
        created_by_id,
        created_date,
        currency_iso_code,
        decline_date_time,
        decline_reason,
        handle_time,
        is_deleted,
        is_owner_change_initiated,
        is_preferred_user_required,
        is_status_change_initiated,
        last_modified_by_id,
        last_modified_date,
        name,
        original_group_id,
        original_queue_id,
        owner_id,
        pending_service_routing_id,
        preferred_user_id,
        push_timeout,
        push_timeout_date_time,
        request_date_time,
        routing_model,
        routing_priority,
        routing_type,
        service_channel_id,
        should_skip_capacity_check,
        speed_to_answer,
        status,
        system_modstamp,
        user_id,
        work_item_id,
        after_conversation_actual_time

    from source

)

select * from renamed
