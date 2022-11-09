
with source as (

    select * from {{ source('raw_salesforce', 'questionnaire_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        beats_version_c,
        business_reason_for_project_c,
        business_sponser_name_c,
        cloud_account_email_c,
        cloud_cluster_ids_c,
        created_by_id,
        created_date,
        currency_iso_code,
        es_version_c,
        existing_system_details_c,
        expected_crawl_rate_c,
        expected_return_on_investment_c,
        functionality_c,
        infrastructure_specification_c,
        is_deleted,
        is_latest_c,
        kibana_version_c,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        location_c,
        ls_version_c,
        name,
        nature_of_use_case_c,
        opportunity_c,
        other_plugins_c,
        other_questions_comments_notes_c,
        owner_id,
        platform_details_c,
        plugins_info_c,
        preferred_application_platform_s_c,
        project_name_c,
        project_schedule_c,
        sizing_information_c,
        subscription_c,
        support_questionnaire_type_c,
        system_modstamp,
        target_infrastructure_c,
        target_infrastructure_pick_c,
        time_zone_c,
        tools_frameworks_c,
        endgame_deploy_tools_c,
        endgame_linux_count_c,
        endgame_mac_os_count_c,
        endgame_sensor_deployed_c,
        endgame_sensor_mode_c,
        endgame_win_server_count_c,
        endgame_win_vdi_count_c,
        endgame_win_wstation_count_c,
        es_versions_c,
        snapshot_repo_c,
        other_software_c

    from source

)

select * from renamed
