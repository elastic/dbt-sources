
with source as (

    select * from {{ source('raw_telemetry_self_managed', 'xpack_phone_home_history') }}

),

renamed as (

    select
        id,
        index,
        score,
        source,
        type,
        cluster_name,
        cluster_name_keyword,
        cluster_stats_indices_completion_size_in_bytes,
        cluster_stats_indices_count,
        cluster_stats_indices_docs_count,
        cluster_stats_indices_docs_deleted,
        cluster_stats_indices_fielddata_evictions,
        cluster_stats_indices_fielddata_memory_size_in_bytes,
        cluster_stats_indices_query_cache_evictions,
        cluster_stats_indices_query_cache_memory_size_in_bytes,
        cluster_stats_indices_segments_count,
        cluster_stats_indices_segments_doc_values_memory_in_bytes,
        cluster_stats_indices_segments_fixed_bit_set_memory_in_bytes,
        cluster_stats_indices_segments_index_writer_memory_in_bytes,
        cluster_stats_indices_segments_memory_in_bytes,
        cluster_stats_indices_segments_norms_memory_in_bytes,
        cluster_stats_indices_segments_points_memory_in_bytes,
        cluster_stats_indices_segments_stored_fields_memory_in_bytes,
        cluster_stats_indices_segments_term_vectors_memory_in_bytes,
        cluster_stats_indices_segments_terms_memory_in_bytes,
        cluster_stats_indices_segments_version_map_memory_in_bytes,
        cluster_stats_indices_shards_index_primaries_avg,
        cluster_stats_indices_shards_index_primaries_max,
        cluster_stats_indices_shards_index_primaries_min,
        cluster_stats_indices_shards_index_replication_avg,
        cluster_stats_indices_shards_index_replication_max,
        cluster_stats_indices_shards_index_replication_min,
        cluster_stats_indices_shards_index_shards_avg,
        cluster_stats_indices_shards_index_shards_max,
        cluster_stats_indices_shards_index_shards_min,
        cluster_stats_indices_shards_primaries,
        cluster_stats_indices_shards_total,
        cluster_stats_indices_store_size_in_bytes,
        cluster_stats_indices_store_throttle_time_in_millis,
        cluster_stats_nodes_count_coordinating_only,
        cluster_stats_nodes_count_data,
        cluster_stats_nodes_count_ingest,
        cluster_stats_nodes_count_master,
        cluster_stats_nodes_count_ml,
        cluster_stats_nodes_count_total,
        cluster_stats_nodes_fs_available_in_bytes,
        cluster_stats_nodes_fs_free_in_bytes,
        cluster_stats_nodes_fs_total_in_bytes,
        cluster_stats_nodes_jvm_max_uptime_in_millis,
        cluster_stats_nodes_jvm_mem_heap_max_in_bytes,
        cluster_stats_nodes_jvm_mem_heap_used_in_bytes,
        cluster_stats_nodes_jvm_threads,
        cluster_stats_nodes_jvm_versions_count,
        cluster_stats_nodes_jvm_versions_version,
        cluster_stats_nodes_jvm_versions_vm_name,
        cluster_stats_nodes_jvm_versions_vm_name_keyword,
        cluster_stats_nodes_jvm_versions_vm_vendor,
        cluster_stats_nodes_jvm_versions_vm_vendor_keyword,
        cluster_stats_nodes_jvm_versions_vm_version,
        cluster_stats_nodes_os_allocated_processors,
        cluster_stats_nodes_os_available_processors,
        cluster_stats_nodes_os_mem_free_in_bytes,
        cluster_stats_nodes_os_mem_free_percent,
        cluster_stats_nodes_os_mem_total_in_bytes,
        cluster_stats_nodes_os_mem_used_in_bytes,
        cluster_stats_nodes_os_mem_used_percent,
        cluster_stats_nodes_os_names_count,
        cluster_stats_nodes_os_names_name,
        cluster_stats_nodes_os_pretty_names_count,
        cluster_stats_nodes_os_pretty_names_pretty_name,
        cluster_stats_nodes_os_pretty_names_pretty_name_text,
        cluster_stats_nodes_plugins_classname,
        cluster_stats_nodes_plugins_description,
        cluster_stats_nodes_plugins_description_keyword,
        cluster_stats_nodes_plugins_has_native_controller,
        cluster_stats_nodes_plugins_name,
        cluster_stats_nodes_plugins_version,
        cluster_stats_nodes_process_cpu_percent,
        cluster_stats_nodes_process_names_avg,
        cluster_stats_nodes_process_names_max,
        cluster_stats_nodes_process_names_min,
        cluster_stats_nodes_versions,
        cluster_stats_status,
        cluster_uuid,
        geoip_city_name,
        geoip_city_name_keyword,
        geoip_continent_name,
        geoip_continent_name_keyword,
        geoip_country_iso_code,
        geoip_location,
        license_expiry_date,
        license_issue_date,
        license_issued_to,
        license_issuer,
        license_max_nodes,
        license_status,
        license_type,
        license_uid,
        stack_stats_apm_found,
        stack_stats_app_search_accounts_engines_document_count,
        stack_stats_app_search_stats_total_accounts,
        stack_stats_app_search_stats_total_engines,
        stack_stats_app_search_stats_total_queries_last_30_days,
        stack_stats_beats_count,
        stack_stats_beats_hosts,
        stack_stats_beats_input_count,
        stack_stats_beats_input_names,
        stack_stats_beats_module_count,
        stack_stats_beats_module_names,
        stack_stats_beats_types_auditbeat,
        stack_stats_beats_types_filebeat,
        stack_stats_beats_types_heartbeat,
        stack_stats_beats_types_metricbeat,
        stack_stats_beats_types_packetbeat,
        stack_stats_beats_types_winlogbeat,
        stack_stats_beats_versions_count,
        stack_stats_beats_versions_version,
        stack_stats_kibana_cloud_count,
        stack_stats_kibana_cloud_name,
        stack_stats_kibana_cloud_regions_count,
        stack_stats_kibana_cloud_regions_region,
        stack_stats_kibana_cloud_vm_types_count,
        stack_stats_kibana_cloud_vm_types_vm_type,
        stack_stats_kibana_cloud_vms,
        stack_stats_kibana_cloud_zones_count,
        stack_stats_kibana_cloud_zones_zone,
        stack_stats_kibana_count,
        stack_stats_kibana_dashboard_total,
        stack_stats_kibana_graph_workspace_total,
        stack_stats_kibana_index_pattern_total,
        stack_stats_kibana_indices,
        stack_stats_kibana_os_distroreleases_count,
        stack_stats_kibana_os_distroreleases_distrorelease,
        stack_stats_kibana_os_distroreleases_distrorelease_text,
        stack_stats_kibana_os_distros_count,
        stack_stats_kibana_os_distros_distro,
        stack_stats_kibana_os_distros_distro_text,
        stack_stats_kibana_os_platformreleases_count,
        stack_stats_kibana_os_platformreleases_platformrelease,
        stack_stats_kibana_os_platformreleases_platformrelease_text,
        stack_stats_kibana_os_platforms_count,
        stack_stats_kibana_os_platforms_platform,
        stack_stats_kibana_os_platforms_platform_text,
        stack_stats_kibana_plugins_apm_has_any_services,
        stack_stats_kibana_plugins_apm_services_per_agent_go,
        stack_stats_kibana_plugins_apm_services_per_agent_java,
        stack_stats_kibana_plugins_apm_services_per_agent_js_base,
        stack_stats_kibana_plugins_apm_services_per_agent_nodejs,
        stack_stats_kibana_plugins_apm_services_per_agent_python,
        stack_stats_kibana_plugins_apm_services_per_agent_ruby,
        stack_stats_kibana_plugins_canvas_elements_per_page_avg,
        stack_stats_kibana_plugins_canvas_elements_per_page_max,
        stack_stats_kibana_plugins_canvas_elements_per_page_min,
        stack_stats_kibana_plugins_canvas_elements_total,
        stack_stats_kibana_plugins_canvas_functions_in_use,
        stack_stats_kibana_plugins_canvas_functions_per_element_avg,
        stack_stats_kibana_plugins_canvas_functions_per_element_max,
        stack_stats_kibana_plugins_canvas_functions_per_element_min,
        stack_stats_kibana_plugins_canvas_functions_total,
        stack_stats_kibana_plugins_canvas_pages_per_workpad_avg,
        stack_stats_kibana_plugins_canvas_pages_per_workpad_max,
        stack_stats_kibana_plugins_canvas_pages_per_workpad_min,
        stack_stats_kibana_plugins_canvas_pages_total,
        stack_stats_kibana_plugins_canvas_workpads_total,
        stack_stats_kibana_plugins_infraops_last_24_hours_hits_infraops_docker,
        stack_stats_kibana_plugins_infraops_last_24_hours_hits_infraops_hosts,
        stack_stats_kibana_plugins_infraops_last_24_hours_hits_infraops_kubernetes,
        stack_stats_kibana_plugins_infraops_last_24_hours_hits_logs,
        stack_stats_kibana_plugins_kql_defaultquerylanguage,
        stack_stats_kibana_plugins_kql_optincount,
        stack_stats_kibana_plugins_kql_optoutcount,
        stack_stats_kibana_plugins_lens_saved_30_days_total,
        stack_stats_kibana_plugins_maps_mapstotalcount,
        stack_stats_kibana_plugins_rollups_index_patterns_total,
        stack_stats_kibana_plugins_rollups_saved_searches_total,
        stack_stats_kibana_plugins_rollups_visualizations_saved_searches_total,
        stack_stats_kibana_plugins_rollups_visualizations_total,
        stack_stats_kibana_plugins_spaces_available,
        stack_stats_kibana_plugins_spaces_count,
        stack_stats_kibana_plugins_spaces_disabledfeatures,
        stack_stats_kibana_plugins_spaces_enabled,
        stack_stats_kibana_plugins_ui_metric_siem_value,
        stack_stats_kibana_plugins_uptime_last_24_hours_hits_monitor_page,
        stack_stats_kibana_plugins_uptime_last_24_hours_hits_overview_page,
        stack_stats_kibana_search_total,
        stack_stats_kibana_timelion_sheet_total,
        stack_stats_kibana_versions_count,
        stack_stats_kibana_versions_version,
        stack_stats_kibana_visualization_total,
        stack_stats_logstash_count,
        stack_stats_logstash_versions_count,
        stack_stats_logstash_versions_version,
        stack_stats_xpack_data_frame_transforms__all,
        stack_stats_xpack_frozen_indices_indices_count,
        stack_stats_xpack_graph_available,
        stack_stats_xpack_graph_enabled,
        stack_stats_xpack_ilm_policy_count,
        stack_stats_xpack_ilm_policy_stats_indices_managed,
        stack_stats_xpack_ilm_policy_stats_phases_cold_actions,
        stack_stats_xpack_ilm_policy_stats_phases_cold_min_age,
        stack_stats_xpack_ilm_policy_stats_phases_delete_actions,
        stack_stats_xpack_ilm_policy_stats_phases_delete_min_age,
        stack_stats_xpack_ilm_policy_stats_phases_hot_actions,
        stack_stats_xpack_ilm_policy_stats_phases_hot_min_age,
        stack_stats_xpack_ilm_policy_stats_phases_warm_actions,
        stack_stats_xpack_ilm_policy_stats_phases_warm_min_age,
        stack_stats_xpack_logstash_available,
        stack_stats_xpack_logstash_enabled,
        stack_stats_xpack_ml_available,
        stack_stats_xpack_ml_datafeeds__all_count,
        stack_stats_xpack_ml_datafeeds_started_count,
        stack_stats_xpack_ml_datafeeds_stopped_count,
        stack_stats_xpack_ml_enabled,
        stack_stats_xpack_ml_jobs__all_count,
        stack_stats_xpack_ml_jobs__all_detectors_avg,
        stack_stats_xpack_ml_jobs__all_detectors_max,
        stack_stats_xpack_ml_jobs__all_detectors_min,
        stack_stats_xpack_ml_jobs__all_detectors_total,
        stack_stats_xpack_ml_jobs__all_forecasts_duration_ms_avg,
        stack_stats_xpack_ml_jobs__all_forecasts_duration_ms_max,
        stack_stats_xpack_ml_jobs__all_forecasts_duration_ms_min,
        stack_stats_xpack_ml_jobs__all_forecasts_duration_ms_total,
        stack_stats_xpack_ml_jobs__all_forecasts_forecasted_jobs,
        stack_stats_xpack_ml_jobs__all_forecasts_memory_bytes_avg,
        stack_stats_xpack_ml_jobs__all_forecasts_memory_bytes_max,
        stack_stats_xpack_ml_jobs__all_forecasts_memory_bytes_min,
        stack_stats_xpack_ml_jobs__all_forecasts_memory_bytes_total,
        stack_stats_xpack_ml_jobs__all_forecasts_processing_time_ms_avg,
        stack_stats_xpack_ml_jobs__all_forecasts_processing_time_ms_max,
        stack_stats_xpack_ml_jobs__all_forecasts_processing_time_ms_min,
        stack_stats_xpack_ml_jobs__all_forecasts_processing_time_ms_total,
        stack_stats_xpack_ml_jobs__all_forecasts_records_avg,
        stack_stats_xpack_ml_jobs__all_forecasts_records_max,
        stack_stats_xpack_ml_jobs__all_forecasts_records_min,
        stack_stats_xpack_ml_jobs__all_forecasts_records_total,
        stack_stats_xpack_ml_jobs__all_forecasts_status_failed,
        stack_stats_xpack_ml_jobs__all_forecasts_status_finished,
        stack_stats_xpack_ml_jobs__all_forecasts_total,
        stack_stats_xpack_ml_jobs__all_model_size_avg,
        stack_stats_xpack_ml_jobs__all_model_size_max,
        stack_stats_xpack_ml_jobs__all_model_size_min,
        stack_stats_xpack_ml_jobs__all_model_size_total,
        stack_stats_xpack_ml_jobs_closed_count,
        stack_stats_xpack_ml_jobs_closed_detectors_avg,
        stack_stats_xpack_ml_jobs_closed_detectors_max,
        stack_stats_xpack_ml_jobs_closed_detectors_min,
        stack_stats_xpack_ml_jobs_closed_detectors_total,
        stack_stats_xpack_ml_jobs_closed_model_size_avg,
        stack_stats_xpack_ml_jobs_closed_model_size_max,
        stack_stats_xpack_ml_jobs_closed_model_size_min,
        stack_stats_xpack_ml_jobs_closed_model_size_total,
        stack_stats_xpack_ml_jobs_closing_count,
        stack_stats_xpack_ml_jobs_closing_detectors_avg,
        stack_stats_xpack_ml_jobs_closing_detectors_max,
        stack_stats_xpack_ml_jobs_closing_detectors_min,
        stack_stats_xpack_ml_jobs_closing_detectors_total,
        stack_stats_xpack_ml_jobs_closing_model_size_avg,
        stack_stats_xpack_ml_jobs_closing_model_size_max,
        stack_stats_xpack_ml_jobs_closing_model_size_min,
        stack_stats_xpack_ml_jobs_closing_model_size_total,
        stack_stats_xpack_ml_jobs_failed_count,
        stack_stats_xpack_ml_jobs_failed_detectors_avg,
        stack_stats_xpack_ml_jobs_failed_detectors_max,
        stack_stats_xpack_ml_jobs_failed_detectors_min,
        stack_stats_xpack_ml_jobs_failed_detectors_total,
        stack_stats_xpack_ml_jobs_failed_model_size_avg,
        stack_stats_xpack_ml_jobs_failed_model_size_max,
        stack_stats_xpack_ml_jobs_failed_model_size_min,
        stack_stats_xpack_ml_jobs_failed_model_size_total,
        stack_stats_xpack_ml_jobs_opened_count,
        stack_stats_xpack_ml_jobs_opened_detectors_avg,
        stack_stats_xpack_ml_jobs_opened_detectors_max,
        stack_stats_xpack_ml_jobs_opened_detectors_min,
        stack_stats_xpack_ml_jobs_opened_detectors_total,
        stack_stats_xpack_ml_jobs_opened_model_size_avg,
        stack_stats_xpack_ml_jobs_opened_model_size_max,
        stack_stats_xpack_ml_jobs_opened_model_size_min,
        stack_stats_xpack_ml_jobs_opened_model_size_total,
        stack_stats_xpack_ml_jobs_opening_count,
        stack_stats_xpack_ml_jobs_opening_detectors_avg,
        stack_stats_xpack_ml_jobs_opening_detectors_max,
        stack_stats_xpack_ml_jobs_opening_detectors_min,
        stack_stats_xpack_ml_jobs_opening_detectors_total,
        stack_stats_xpack_ml_jobs_opening_model_size_avg,
        stack_stats_xpack_ml_jobs_opening_model_size_max,
        stack_stats_xpack_ml_jobs_opening_model_size_min,
        stack_stats_xpack_ml_jobs_opening_model_size_total,
        stack_stats_xpack_monitoring_available,
        stack_stats_xpack_monitoring_collection_enabled,
        stack_stats_xpack_monitoring_enabled,
        stack_stats_xpack_monitoring_enabled_exporters_http,
        stack_stats_xpack_monitoring_enabled_exporters_local,
        stack_stats_xpack_reporting__all,
        stack_stats_xpack_reporting_available,
        stack_stats_xpack_reporting_browser_type,
        stack_stats_xpack_reporting_csv_available,
        stack_stats_xpack_reporting_csv_total,
        stack_stats_xpack_reporting_enabled,
        stack_stats_xpack_reporting_last7days__all,
        stack_stats_xpack_reporting_last7days_csv_available,
        stack_stats_xpack_reporting_last7days_csv_total,
        stack_stats_xpack_reporting_last7days_printable_pdf_app_dashboard,
        stack_stats_xpack_reporting_last7days_printable_pdf_app_visualization,
        stack_stats_xpack_reporting_last7days_printable_pdf_available,
        stack_stats_xpack_reporting_last7days_printable_pdf_layout_preserve_layout,
        stack_stats_xpack_reporting_last7days_printable_pdf_layout_print,
        stack_stats_xpack_reporting_last7days_printable_pdf_total,
        stack_stats_xpack_reporting_last7days_status_completed,
        stack_stats_xpack_reporting_last7days_status_failed,
        stack_stats_xpack_reporting_lastday__all,
        stack_stats_xpack_reporting_lastday_csv_available,
        stack_stats_xpack_reporting_lastday_csv_total,
        stack_stats_xpack_reporting_lastday_printable_pdf_app_dashboard,
        stack_stats_xpack_reporting_lastday_printable_pdf_app_visualization,
        stack_stats_xpack_reporting_lastday_printable_pdf_available,
        stack_stats_xpack_reporting_lastday_printable_pdf_layout_preserve_layout,
        stack_stats_xpack_reporting_lastday_printable_pdf_layout_print,
        stack_stats_xpack_reporting_lastday_printable_pdf_total,
        stack_stats_xpack_reporting_lastday_status_completed,
        stack_stats_xpack_reporting_lastday_status_failed,
        stack_stats_xpack_reporting_printable_pdf_app_dashboard,
        stack_stats_xpack_reporting_printable_pdf_app_visualization,
        stack_stats_xpack_reporting_printable_pdf_available,
        stack_stats_xpack_reporting_printable_pdf_layout_preserve_layout,
        stack_stats_xpack_reporting_printable_pdf_layout_print,
        stack_stats_xpack_reporting_printable_pdf_total,
        stack_stats_xpack_reporting_status_completed,
        stack_stats_xpack_reporting_status_failed,
        stack_stats_xpack_rollup_available,
        stack_stats_xpack_rollup_enabled,
        stack_stats_xpack_security_anonymous_enabled,
        stack_stats_xpack_security_audit_enabled,
        stack_stats_xpack_security_audit_outputs,
        stack_stats_xpack_security_available,
        stack_stats_xpack_security_enabled,
        stack_stats_xpack_security_enabled_realms_name,
        stack_stats_xpack_security_enabled_realms_order,
        stack_stats_xpack_security_enabled_realms_size,
        stack_stats_xpack_security_enabled_realms_type,
        stack_stats_xpack_security_ipfilter_http,
        stack_stats_xpack_security_ipfilter_transport,
        stack_stats_xpack_security_realm_info_count,
        stack_stats_xpack_security_realm_info_custom_count,
        stack_stats_xpack_security_realm_info_names,
        stack_stats_xpack_security_realms_active_directory_available,
        stack_stats_xpack_security_realms_active_directory_enabled,
        stack_stats_xpack_security_realms_active_directory_load_balance_type,
        stack_stats_xpack_security_realms_active_directory_name,
        stack_stats_xpack_security_realms_active_directory_order,
        stack_stats_xpack_security_realms_active_directory_size,
        stack_stats_xpack_security_realms_active_directory_ssl,
        stack_stats_xpack_security_realms_active_directory_user_search,
        stack_stats_xpack_security_realms_file_available,
        stack_stats_xpack_security_realms_file_enabled,
        stack_stats_xpack_security_realms_file_name,
        stack_stats_xpack_security_realms_file_order,
        stack_stats_xpack_security_realms_file_size,
        stack_stats_xpack_security_realms_kerberos_enabled,
        stack_stats_xpack_security_realms_ldap_available,
        stack_stats_xpack_security_realms_ldap_enabled,
        stack_stats_xpack_security_realms_ldap_load_balance_type,
        stack_stats_xpack_security_realms_ldap_name,
        stack_stats_xpack_security_realms_ldap_order,
        stack_stats_xpack_security_realms_ldap_size,
        stack_stats_xpack_security_realms_ldap_ssl,
        stack_stats_xpack_security_realms_ldap_user_search,
        stack_stats_xpack_security_realms_native_available,
        stack_stats_xpack_security_realms_native_enabled,
        stack_stats_xpack_security_realms_native_name,
        stack_stats_xpack_security_realms_native_order,
        stack_stats_xpack_security_realms_native_size,
        stack_stats_xpack_security_realms_oidc_enabled,
        stack_stats_xpack_security_realms_pki_available,
        stack_stats_xpack_security_realms_pki_enabled,
        stack_stats_xpack_security_realms_pki_name,
        stack_stats_xpack_security_realms_pki_order,
        stack_stats_xpack_security_realms_saml_available,
        stack_stats_xpack_security_realms_saml_enabled,
        stack_stats_xpack_security_realms_saml_name,
        stack_stats_xpack_security_realms_saml_order,
        stack_stats_xpack_security_role_mapping_native_enabled,
        stack_stats_xpack_security_role_mapping_native_size,
        stack_stats_xpack_security_roles_file_dls,
        stack_stats_xpack_security_roles_file_fls,
        stack_stats_xpack_security_roles_file_size,
        stack_stats_xpack_security_roles_native_dls,
        stack_stats_xpack_security_roles_native_fls,
        stack_stats_xpack_security_roles_native_size,
        stack_stats_xpack_security_ssl_http_enabled,
        stack_stats_xpack_security_ssl_transport_enabled,
        stack_stats_xpack_security_system_key_enabled,
        stack_stats_xpack_slm_policy_count,
        stack_stats_xpack_sql_available,
        stack_stats_xpack_sql_enabled,
        stack_stats_xpack_sql_features_command,
        stack_stats_xpack_sql_features_groupby,
        stack_stats_xpack_sql_features_having,
        stack_stats_xpack_sql_features_join,
        stack_stats_xpack_sql_features_limit,
        stack_stats_xpack_sql_features_local,
        stack_stats_xpack_sql_features_orderby,
        stack_stats_xpack_sql_features_subselect,
        stack_stats_xpack_sql_features_where,
        stack_stats_xpack_sql_queries__all_failed,
        stack_stats_xpack_sql_queries__all_paging,
        stack_stats_xpack_sql_queries__all_total,
        stack_stats_xpack_sql_queries_canvas_failed,
        stack_stats_xpack_sql_queries_canvas_paging,
        stack_stats_xpack_sql_queries_canvas_total,
        stack_stats_xpack_sql_queries_cli_failed,
        stack_stats_xpack_sql_queries_cli_paging,
        stack_stats_xpack_sql_queries_cli_total,
        stack_stats_xpack_sql_queries_jdbc_failed,
        stack_stats_xpack_sql_queries_jdbc_paging,
        stack_stats_xpack_sql_queries_jdbc_total,
        stack_stats_xpack_sql_queries_odbc_failed,
        stack_stats_xpack_sql_queries_odbc_paging,
        stack_stats_xpack_sql_queries_odbc_total,
        stack_stats_xpack_sql_queries_rest_failed,
        stack_stats_xpack_sql_queries_rest_paging,
        stack_stats_xpack_sql_queries_rest_total,
        stack_stats_xpack_sql_queries_translate_count,
        stack_stats_xpack_watcher_available,
        stack_stats_xpack_watcher_count_active,
        stack_stats_xpack_watcher_count_total,
        stack_stats_xpack_watcher_enabled,
        stack_stats_xpack_watcher_execution_actions__all_total,
        stack_stats_xpack_watcher_execution_actions__all_total_time_in_ms,
        stack_stats_xpack_watcher_execution_actions_email_total,
        stack_stats_xpack_watcher_execution_actions_email_total_time_in_ms,
        stack_stats_xpack_watcher_execution_actions_hipchat_total,
        stack_stats_xpack_watcher_execution_actions_hipchat_total_time_in_ms,
        stack_stats_xpack_watcher_execution_actions_index_total,
        stack_stats_xpack_watcher_execution_actions_index_total_time_in_ms,
        stack_stats_xpack_watcher_execution_actions_jira_total,
        stack_stats_xpack_watcher_execution_actions_jira_total_time_in_ms,
        stack_stats_xpack_watcher_execution_actions_logging_total,
        stack_stats_xpack_watcher_execution_actions_logging_total_time_in_ms,
        stack_stats_xpack_watcher_execution_actions_pagerduty_total,
        stack_stats_xpack_watcher_execution_actions_pagerduty_total_time_in_ms,
        stack_stats_xpack_watcher_execution_actions_slack_total,
        stack_stats_xpack_watcher_execution_actions_slack_total_time_in_ms,
        stack_stats_xpack_watcher_execution_actions_webhook_total,
        stack_stats_xpack_watcher_execution_actions_webhook_total_time_in_ms,
        stack_stats_xpack_watcher_watch_action_email_active,
        stack_stats_xpack_watcher_watch_action_email_total,
        stack_stats_xpack_watcher_watch_action_hipchat_active,
        stack_stats_xpack_watcher_watch_action_hipchat_total,
        stack_stats_xpack_watcher_watch_action_index_active,
        stack_stats_xpack_watcher_watch_action_index_total,
        stack_stats_xpack_watcher_watch_action_jira_active,
        stack_stats_xpack_watcher_watch_action_jira_total,
        stack_stats_xpack_watcher_watch_action_logging_active,
        stack_stats_xpack_watcher_watch_action_logging_total,
        stack_stats_xpack_watcher_watch_action_pagerduty_active,
        stack_stats_xpack_watcher_watch_action_pagerduty_total,
        stack_stats_xpack_watcher_watch_action_slack_active,
        stack_stats_xpack_watcher_watch_action_slack_total,
        stack_stats_xpack_watcher_watch_action_webhook_active,
        stack_stats_xpack_watcher_watch_action_webhook_total,
        stack_stats_xpack_watcher_watch_condition__all_active,
        stack_stats_xpack_watcher_watch_condition__all_total,
        stack_stats_xpack_watcher_watch_condition_always_active,
        stack_stats_xpack_watcher_watch_condition_always_total,
        stack_stats_xpack_watcher_watch_condition_array_compare_active,
        stack_stats_xpack_watcher_watch_condition_array_compare_total,
        stack_stats_xpack_watcher_watch_condition_compare_active,
        stack_stats_xpack_watcher_watch_condition_compare_total,
        stack_stats_xpack_watcher_watch_condition_never_active,
        stack_stats_xpack_watcher_watch_condition_never_total,
        stack_stats_xpack_watcher_watch_condition_script_active,
        stack_stats_xpack_watcher_watch_condition_script_total,
        stack_stats_xpack_watcher_watch_input__all_active,
        stack_stats_xpack_watcher_watch_input__all_total,
        stack_stats_xpack_watcher_watch_input_chain_active,
        stack_stats_xpack_watcher_watch_input_chain_total,
        stack_stats_xpack_watcher_watch_input_http_active,
        stack_stats_xpack_watcher_watch_input_http_total,
        stack_stats_xpack_watcher_watch_input_none_active,
        stack_stats_xpack_watcher_watch_input_none_total,
        stack_stats_xpack_watcher_watch_input_search_active,
        stack_stats_xpack_watcher_watch_input_search_total,
        stack_stats_xpack_watcher_watch_input_simple_active,
        stack_stats_xpack_watcher_watch_input_simple_total,
        stack_stats_xpack_watcher_watch_metadata_active,
        stack_stats_xpack_watcher_watch_metadata_total,
        stack_stats_xpack_watcher_watch_transform_chain_active,
        stack_stats_xpack_watcher_watch_transform_chain_total,
        stack_stats_xpack_watcher_watch_transform_script_active,
        stack_stats_xpack_watcher_watch_transform_script_total,
        stack_stats_xpack_watcher_watch_transform_search_active,
        stack_stats_xpack_watcher_watch_transform_search_total,
        stack_stats_xpack_watcher_watch_trigger__all_active,
        stack_stats_xpack_watcher_watch_trigger__all_total,
        stack_stats_xpack_watcher_watch_trigger_schedule__all_active,
        stack_stats_xpack_watcher_watch_trigger_schedule__all_total,
        stack_stats_xpack_watcher_watch_trigger_schedule_cron_active,
        stack_stats_xpack_watcher_watch_trigger_schedule_cron_total,
        stack_stats_xpack_watcher_watch_trigger_schedule_daily_active,
        stack_stats_xpack_watcher_watch_trigger_schedule_daily_total,
        stack_stats_xpack_watcher_watch_trigger_schedule_hourly_active,
        stack_stats_xpack_watcher_watch_trigger_schedule_hourly_total,
        stack_stats_xpack_watcher_watch_trigger_schedule_interval_active,
        stack_stats_xpack_watcher_watch_trigger_schedule_interval_total,
        stack_stats_xpack_watcher_watch_trigger_schedule_monthly_active,
        stack_stats_xpack_watcher_watch_trigger_schedule_monthly_total,
        stack_stats_xpack_watcher_watch_trigger_schedule_weekly_active,
        stack_stats_xpack_watcher_watch_trigger_schedule_weekly_total,
        stack_stats_xpack_watcher_watch_trigger_schedule_yearly_active,
        stack_stats_xpack_watcher_watch_trigger_schedule_yearly_total,
        stack_stats_xpack_vectors_available,
        stack_stats_xpack_vectors_enabled,
        telemetry_anonymized,
        telemetry_api_version,
        telemetry_headers_agent,
        telemetry_headers_agent_keyword,
        telemetry_headers_referrer,
        telemetry_headers_referrer_keyword,
        telemetry_processed_timestamp,
        telemetry_usage_kibana,
        telemetry_usage_logstash,
        telemetry_usage_xpack_graph,
        telemetry_usage_xpack_ml,
        telemetry_usage_xpack_monitoring,
        telemetry_usage_xpack_reporting,
        telemetry_usage_xpack_security,
        telemetry_usage_xpack_watcher,
        timestamp,
        user_agent_device,
        user_agent_device_keyword,
        user_agent_major,
        user_agent_minor,
        user_agent_name,
        user_agent_name_keyword,
        user_agent_os,
        user_agent_os_keyword,
        user_agent_os_name,
        user_agent_os_name_keyword,
        version,
        version_major,
        version_minor,
        version_patch,
        telemetry_headers_remote_addr,
        geoip_region_name,
        cluster_stats_nodes_process_open_file_descriptors_avg,
        cluster_stats_nodes_plugins,
        stack_stats_kibana_cloud,
        stack_stats_xpack_ml_jobs_closed_forecasts_forecasted_jobs,
        stack_stats_kibana_plugins_apm_services_per_agent,
        stack_stats_kibana_plugins_infraops_last_24_hours_hits,
        stack_stats_xpack_ccr_follower_indices_count,
        stack_stats_xpack_ccr_auto_follow_patterns_count,
        stack_stats_beats_types,
        cluster_stats_nodes_jvm_versions_bundled_jdk,
        cluster_stats_nodes_jvm_versions_using_bundled_jdk,
        stack_stats_beats_heartbeat_endpoints,
        stack_stats_beats_heartbeat_http_endpoints,
        stack_stats_beats_heartbeat_http_monitors,
        stack_stats_beats_heartbeat_icmp_endpoints,
        stack_stats_beats_heartbeat_icmp_monitors,
        stack_stats_beats_heartbeat_monitors,
        stack_stats_beats_heartbeat_tcp_endpoints,
        stack_stats_beats_heartbeat_tcp_monitors,
        stack_stats_kibana_plugins_apm_services_per_agent_dotnet,
        stack_stats_kibana_plugins_apm_services_per_agent_rum_js,
        stack_stats_kibana_plugins_ml_file_data_visualizer_index_creation_count,
        stack_stats_xpack_ccr_available,
        stack_stats_xpack_ccr_enabled,
        stack_stats_xpack_ccr_last_follow_time_in_millis,
        stack_stats_xpack_reporting_csv_count,
        stack_stats_xpack_reporting_printable_pdf_count,
        telemetry_usage_xpack_paid_subscription_basic_security,
        telemetry_usage_xpack_paid_subscription_basic_usage,
        telemetry_usage_xpack_solutions_security,
        telemetry_usage_xpack_solutions_enterprise_search,
        telemetry_usage_xpack_solutions_observability,
        partition_date

    from source

)

select * from renamed
