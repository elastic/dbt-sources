
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_fflib_batch_process_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_apex_job_class_name_c,
        ffrr_apex_job_id_c,
        ffrr_batch_control_record_id_c,
        ffrr_concurrency_mode_unique_id_c,
        ffrr_current_chain_index_c,
        ffrr_current_chain_number_c,
        ffrr_failed_record_id_c,
        ffrr_from_progress_bar_c,
        ffrr_numberof_batchesin_chain_c,
        ffrr_process_name_c,
        ffrr_progress_information_c,
        ffrr_status_c,
        ffrr_status_detail_c,
        ffrr_successful_record_id_c,
        ffrr_total_chain_number_c,
        ffrr_use_default_constructor_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
