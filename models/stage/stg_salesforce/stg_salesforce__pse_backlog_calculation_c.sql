
with source as (

    select * from {{ source('raw_salesforce', 'pse_backlog_calculation_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pse_batch_id_c,
        pse_calculate_project_backlog_c,
        pse_copy_fields_for_current_time_period_c,
        pse_end_date_c,
        pse_error_details_c,
        pse_group_c,
        pse_include_sublevels_c,
        pse_is_report_master_c,
        pse_post_process_batch_id_c,
        pse_practice_c,
        pse_project_c,
        pse_region_c,
        pse_resource_c,
        pse_reuse_detail_objects_c,
        pse_start_calculating_from_c,
        pse_start_date_c,
        pse_status_c,
        pse_time_period_types_c,
        system_modstamp

    from source

)

select * from renamed
