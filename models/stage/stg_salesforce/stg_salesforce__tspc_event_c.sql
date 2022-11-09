
with source as (

    select * from {{ source('raw_salesforce', 'tspc_event_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        tspc_actual_end_date_c,
        tspc_actual_start_date_c,
        tspc_closed_date_c,
        tspc_code_c,
        tspc_completed_date_c,
        tspc_days_to_close_c,
        tspc_deal_c,
        tspc_description_c,
        tspc_due_date_c,
        tspc_eid_c,
        tspc_end_date_c,
        tspc_goal_c,
        tspc_group_c,
        tspc_is_auto_closed_c,
        tspc_is_closed_c,
        tspc_is_completed_c,
        tspc_is_mutual_c,
        tspc_is_past_due_c,
        tspc_is_required_c,
        tspc_items_completed_count_c,
        tspc_items_count_c,
        tspc_items_progress_c,
        tspc_party_c,
        tspc_previous_status_c,
        tspc_sort_order_c,
        tspc_stage_c,
        tspc_start_date_c,
        tspc_status_c,
        tspc_sync_progress_field_c,
        tspc_sync_status_field_c,
        tspc_sync_summary_field_c,
        tspc_sync_target_object_c,
        tspc_template_event_c,
        tspc_type_c

    from source

)

select * from renamed
