
with source as (

    select * from {{ source('raw_salesforce', 'fcrm_fcr_aggregate_entry_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fcrm_day_c,
        fcrm_schema_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        fcrm_campaign_c,
        fcrm_clicks_c,
        fcrm_cost_per_click_c,
        fcrm_digital_responses_c,
        fcrm_fcr_inquiry_target_c,
        fcrm_fcr_inquiry_target_v_c,
        fcrm_fcr_qr_c,
        fcrm_fcr_qr_v_c,
        fcrm_fcr_sar_c,
        fcrm_fcr_sar_v_c,
        fcrm_fcr_sqr_c,
        fcrm_fcr_sqr_v_c,
        fcrm_fcr_sqr_won_c,
        fcrm_fcr_sqr_won_v_c,
        fcrm_first_digital_responses_c,
        fcrm_ga_cost_c,
        fcrm_ga_new_users_c,
        fcrm_ga_users_c,
        fcrm_gadata_may_change_c,
        fcrm_is_active_c,
        fcrm_medium_c,
        fcrm_net_new_c,
        fcrm_non_digital_responses_c,
        fcrm_pageviews_c,
        fcrm_responses_c,
        fcrm_session_duration_c,
        fcrm_sessions_c,
        fcrm_sf_campaign_c,
        fcrm_source_c,
        fcrm_visits_c

    from source

)

select * from renamed
