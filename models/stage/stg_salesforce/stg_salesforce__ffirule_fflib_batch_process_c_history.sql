
with source as (

    select * from {{ source('raw_salesforce', 'ffirule_fflib_batch_process_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffirule_apex_job_class_name_c,
        ffirule_apex_job_id_c,
        ffirule_batch_control_record_id_c,
        ffirule_concurrency_mode_unique_id_c,
        ffirule_current_chain_index_c,
        ffirule_current_chain_number_c,
        ffirule_failed_record_id_c,
        ffirule_from_progress_bar_c,
        ffirule_numberof_batchesin_chain_c,
        ffirule_process_name_c,
        ffirule_progress_information_c,
        ffirule_status_c,
        ffirule_status_detail_c,
        ffirule_successful_record_id_c,
        ffirule_total_chain_number_c,
        ffirule_use_default_constructor_c,
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
