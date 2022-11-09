
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_revenue_contract_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_account_c,
        ffrr_account_name_c,
        ffrr_active_c,
        ffrr_allocatable_c,
        ffrr_allocation_ratio_c,
        ffrr_allocation_status_c,
        ffrr_description_c,
        ffrr_end_date_c,
        ffrr_ffrrtemplate_c,
        ffrr_null_sspcount_c,
        ffrr_performance_obligations_count_c,
        ffrr_poallocated_revenue_override_count_c,
        ffrr_revenue_allocated_c,
        ffrr_revenue_c,
        ffrr_revenue_override_c,
        ffrr_revenue_recognition_complete_c,
        ffrr_start_date_c,
        ffrr_total_allocated_revenue_c,
        ffrr_total_allocated_revenue_override_c,
        ffrr_total_amortized_to_date_c,
        ffrr_total_cost_c,
        ffrr_total_null_allocation_ratio_count_c,
        ffrr_total_recognized_to_date_c,
        ffrr_total_revenue_c,
        ffrr_total_ssp_c,
        ffrr_total_sspfor_allocation_c,
        ffrr_zero_sspcount_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
