
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_fflib_batch_process_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_apex_job_class_name_c,
        fferpcore_apex_job_id_c,
        fferpcore_batch_control_record_id_c,
        fferpcore_concurrency_mode_unique_id_c,
        fferpcore_current_chain_index_c,
        fferpcore_current_chain_number_c,
        fferpcore_failed_record_id_c,
        fferpcore_from_progress_bar_c,
        fferpcore_numberof_batchesin_chain_c,
        fferpcore_process_name_c,
        fferpcore_progress_information_c,
        fferpcore_status_c,
        fferpcore_status_detail_c,
        fferpcore_successful_record_id_c,
        fferpcore_total_chain_number_c,
        fferpcore_use_default_constructor_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
