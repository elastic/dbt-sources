
with source as (

    select * from {{ source('raw_salesforce', 'tspc_ap_c') }}

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
        tspc_account_c,
        tspc_completed_date_time_c,
        tspc_description_c,
        tspc_eid_c,
        tspc_end_date_c,
        tspc_following_plan_c,
        tspc_is_current_c,
        tspc_mod_stamp_sc_c,
        tspc_mod_stamp_ws_c,
        tspc_period_c,
        tspc_previous_plan_c,
        tspc_sc_score_c,
        tspc_sc_score_ratio_c,
        tspc_start_date_c,
        tspc_status_c,
        tspc_template_c,
        tspc_thread_guid_c,
        tspc_thread_source_guid_c,
        tspc_timeframe_c,
        tspc_timeframe_period_id_c,
        tspc_user_c,
        tspc_ws_item_count_c,
        tspc_ws_opportunity_relation_count_c

    from source

)

select * from renamed
