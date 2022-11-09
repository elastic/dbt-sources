
with source as (

    select * from {{ source('raw_salesforce', 'pse_backlog_c_history') }}

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
        pse_assignment_batch_size_c,
        pse_backlog_details_corporate_currencies_c,
        pse_copy_fields_default_c,
        pse_default_time_period_types_c,
        pse_delete_details_on_calc_deletion_c,
        pse_include_sublevels_default_c,
        pse_milestone_statuses_c,
        pse_perform_scheduled_job_cleanup_c,
        pse_post_process_milestone_batch_size_c,
        pse_post_process_project_batch_size_c,
        pse_post_process_resource_request_batch_size_c,
        pse_post_process_rpg_batch_size_c,
        pse_post_processing_delay_c,
        pse_process_backlog_remainder_inline_c,
        pse_resource_request_bill_currency_field_c,
        pse_resource_request_bill_rate_field_c,
        pse_resource_request_cost_currency_field_c,
        pse_resource_request_cost_rate_field_c,
        pse_reuse_detail_objects_default_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
