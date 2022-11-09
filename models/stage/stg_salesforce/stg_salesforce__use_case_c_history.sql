
with source as (

    select * from {{ source('raw_salesforce', 'use_case_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        average_events_per_second_ingest_c,
        avg_event_size_in_k_b_c,
        close_plan_c,
        competitor_c,
        competitor_to_remain_alongside_c,
        created_by_id,
        created_date,
        currency_iso_code,
        customer_facing_c,
        customer_feedback_product_gap_c,
        daily_volume_in_gb_per_day_c,
        description_c,
        elastic_stack_in_use_c,
        estimated_go_live_date_c,
        exp_read_query_latency_required_in_ms_c,
        exp_read_query_throughput_rq_d_qps_c,
        ingest_etl_c,
        intended_client_api_s_c,
        is_deleted,
        jvm_c,
        last_modified_by_id,
        last_modified_date,
        loss_reason_c,
        max_events_per_second_ingest_c,
        name,
        no_of_nodes_c,
        notes_c,
        operating_system_c,
        opportunity_c,
        other_competitor_c,
        poc_executed_c,
        primary_c,
        primary_data_stores_sources_c,
        queues_c,
        retention_period_in_days_c,
        rfp_executed_c,
        sizing_url_c,
        status_of_competition_c,
        subscription_c,
        system_modstamp,
        target_environment_c,
        total_data_size_c,
        use_case_c,
        use_case_sub_category_c

    from source

)

select * from renamed
