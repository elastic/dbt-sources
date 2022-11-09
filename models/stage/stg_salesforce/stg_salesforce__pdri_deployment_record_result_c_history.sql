
with source as (

    select * from {{ source('raw_salesforce', 'pdri_deployment_record_result_c_history') }}

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
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        pdri_batch_operation_c,
        pdri_created_c,
        pdri_data_set_c,
        pdri_deployment_batch_result_c,
        pdri_deployment_data_set_result_c,
        pdri_error_c,
        pdri_partial_process_stage_c,
        pdri_record_id_c,
        pdri_record_url_c,
        pdri_source_record_id_c,
        pdri_source_record_url_c,
        pdri_success_c,
        system_modstamp

    from source

)

select * from renamed
