
with source as (

    select * from {{ source('raw_salesforce', 'tspc_template_event_c') }}

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
        system_modstamp,
        tspc_code_c,
        tspc_dependency_count_c,
        tspc_description_c,
        tspc_duration_c,
        tspc_eid_c,
        tspc_ends_in_c,
        tspc_field_c,
        tspc_field_list_c,
        tspc_goal_c,
        tspc_group_c,
        tspc_has_files_c,
        tspc_has_help_c,
        tspc_has_job_aids_c,
        tspc_help_c,
        tspc_is_mutual_c,
        tspc_is_required_c,
        tspc_items_count_c,
        tspc_parent_c,
        tspc_party_c,
        tspc_sort_order_c,
        tspc_stage_c,
        tspc_starts_in_c,
        tspc_sync_progress_field_c,
        tspc_sync_status_field_c,
        tspc_sync_summary_field_c,
        tspc_sync_target_object_c,
        tspc_template_c,
        tspc_type_c

    from source

)

select * from renamed
