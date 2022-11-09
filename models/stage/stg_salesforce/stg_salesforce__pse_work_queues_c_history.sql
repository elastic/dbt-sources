
with source as (

    select * from {{ source('raw_salesforce', 'pse_work_queues_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        pse_last_queue_manager_execution_c,
        pse_scheduled_job_id_c,
        pse_use_with_actuals_c,
        pse_use_with_backlog_c,
        pse_use_with_billing_clear_c,
        pse_use_with_billing_generation_c,
        pse_use_with_billing_invoice_c,
        pse_use_with_billing_recalc_c,
        pse_use_with_billing_release_c,
        pse_use_with_billing_remove_c,
        pse_use_with_missing_time_cards_c,
        pse_use_with_rpgpr_maint_c,
        pse_use_with_utilization_c,
        pse_use_work_queue_manager_c,
        pse_use_work_queue_monitor_c,
        pse_work_queue_manager_max_threads_c,
        pse_work_queue_manager_poll_frequency_c,
        pse_work_queue_monitor_schedule_id_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
