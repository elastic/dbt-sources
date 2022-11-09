
with source as (

    select * from {{ source('raw_salesforce', 'pse_revenue_forecast_version_c') }}

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
        name,
        owner_id,
        pse_apex_job_id_c,
        pse_batch_process_c,
        pse_batch_processing_status_c,
        pse_corp_currency_c,
        pse_locked_c,
        pse_status_c,
        system_modstamp,
        pse_opportunity_worst_case_threshold_c,
        pse_version_grouping_primary_c,
        pse_include_best_case_c,
        pse_opportunity_expected_case_threshold_c,
        pse_opportunity_best_case_threshold_c,
        pse_include_worst_case_c,
        pse_exclude_opportunity_probabilities_c

    from source

)

select * from renamed
