
with source as (

    select * from {{ source('raw_salesforce', 'pse_fflib_batch_process_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        pse_apex_job_class_name_c,
        pse_apex_job_id_c,
        pse_batch_control_record_id_c,
        pse_concurrency_mode_unique_id_c,
        pse_current_chain_index_c,
        pse_current_chain_number_c,
        pse_failed_record_id_c,
        pse_from_progress_bar_c,
        pse_numberof_batchesin_chain_c,
        pse_process_name_c,
        pse_progress_information_c,
        pse_status_c,
        pse_status_detail_c,
        pse_successful_record_id_c,
        pse_total_chain_number_c,
        pse_use_default_constructor_c,
        system_modstamp

    from source

)

select * from renamed
