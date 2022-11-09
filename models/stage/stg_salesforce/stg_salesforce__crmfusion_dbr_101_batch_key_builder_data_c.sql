
with source as (

    select * from {{ source('raw_salesforce', 'crmfusion_dbr_101_batch_key_builder_data_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        crmfusion_dbr_101_batch_set_row_key_c,
        crmfusion_dbr_101_batches_done_c,
        crmfusion_dbr_101_completed_c,
        crmfusion_dbr_101_current_batch_started_c,
        crmfusion_dbr_101_job_id_c,
        crmfusion_dbr_101_last_batch_size_c,
        crmfusion_dbr_101_max_batch_size_c,
        crmfusion_dbr_101_object_type_c,
        crmfusion_dbr_101_rebuild_number_c,
        crmfusion_dbr_101_rebuild_order_c,
        crmfusion_dbr_101_scenario_ids_c,
        crmfusion_dbr_101_total_batches_c,
        crmfusion_dbr_101_total_duration_c,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
