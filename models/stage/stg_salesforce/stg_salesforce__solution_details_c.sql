
with source as (

    select * from {{ source('raw_salesforce', 'solution_details_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        average_events_per_second_ingest_c,
        avg_event_size_in_k_b_c,
        created_by_id,
        created_date,
        currency_iso_code,
        daily_volume_in_gb_c,
        exp_read_query_latency_required_in_ms_c,
        exp_read_query_throughput_rq_d_qps_c,
        ingest_etl_c,
        intended_client_api_s_c,
        is_deleted,
        jvm_c,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        max_events_per_second_ingest_c,
        name,
        notes_c,
        operating_system_c,
        opportunity_c,
        owner_id,
        poc_executed_c,
        primary_data_stores_sources_c,
        queues_c,
        retention_period_in_days_c,
        rfp_executed_c,
        system_modstamp,
        target_environment_c

    from source

)

select * from renamed
