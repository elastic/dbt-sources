
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_scheduled_routing_job_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        lean_data_config_settings_c,
        lean_data_cron_expression_c,
        lean_data_csv_info_c,
        lean_data_edge_name_c,
        lean_data_end_date_c,
        lean_data_is_active_c,
        lean_data_is_deleted_c,
        lean_data_last_run_date_c,
        lean_data_node_type_c,
        lean_data_order_by_c,
        lean_data_query_limit_c,
        lean_data_routing_deployment_c,
        lean_data_routing_graph_c,
        lean_data_run_type_c,
        lean_data_soql_condition_c,
        lean_data_start_date_c,
        lean_data_time_offset_c,
        lean_data_user_timezone_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
