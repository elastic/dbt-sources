
with source as (

    select * from {{ source('raw_salesforce', 'gong_gong_call_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        gong_call_duration_c,
        gong_call_duration_sec_c,
        gong_call_end_c,
        gong_call_id_c,
        gong_call_score_c,
        gong_call_start_c,
        gong_direction_c,
        gong_gong_count_c,
        gong_is_private_c,
        gong_language_c,
        gong_media_c,
        gong_opp_amount_time_of_call_c,
        gong_opp_close_date_time_of_call_c,
        gong_opp_forecast_category_time_of_call_c,
        gong_opp_probability_time_of_call_c,
        gong_opp_stage_time_of_call_c,
        gong_opportunity_stage_now_c,
        gong_participants_emails_c,
        gong_playbook_match_c,
        gong_pricing_duration_c,
        gong_primary_account_c,
        gong_primary_opportunity_c,
        gong_primary_user_c,
        gong_related_accounts_json_c,
        gong_related_action_items_json_c,
        gong_related_agenda_json_c,
        gong_related_contacts_json_c,
        gong_related_invitees_json_c,
        gong_related_leads_json_c,
        gong_related_notes_json_c,
        gong_related_opportunities_json_c,
        gong_related_participants_json_c,
        gong_related_scorecards_json_c,
        gong_related_stats_json_c,
        gong_related_to_c,
        gong_related_topics_json_c,
        gong_related_trackers_json_c,
        gong_scheduled_c,
        gong_scope_c,
        gong_system_c,
        gong_talk_time_them_c,
        gong_talk_time_us_c,
        gong_title_c,
        gong_view_call_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
