
with source as (

    select * from {{ source('raw_salesforce', 'fcrm_fcr_async_request_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fcrm_account_c,
        fcrm_bypass_delegation_delay_c,
        fcrm_created_in_unit_test_c,
        fcrm_error_c,
        fcrm_error_text_c,
        fcrm_internal_order_c,
        fcrm_params_2_c,
        fcrm_params_c,
        fcrm_request_count_c,
        fcrm_requested_time_c,
        fcrm_requestor_c,
        fcrm_subsystem_c,
        fcrm_test_user_c,
        fcrm_type_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp,
        fcrm_target_time_c,
        fcrm_aggregate_datasources_c,
        fcrm_aggregate_day_c,
        fcrm_aggregate_days_c,
        fcrm_aggregate_schemas_c,
        fcrm_retry_number_c

    from source

)

select * from renamed
