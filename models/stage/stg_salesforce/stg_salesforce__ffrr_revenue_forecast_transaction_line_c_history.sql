
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_revenue_forecast_transaction_line_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_comments_c,
        ffrr_exp_milestone_c,
        ffrr_exp_project_c,
        ffrr_exp_value_currency_c,
        ffrr_forecast_record_id_c,
        ffrr_level_2_object_record_name_c,
        ffrr_level_3_object_record_name_c,
        ffrr_level_4_object_record_name_c,
        ffrr_percentage_c,
        ffrr_performance_obligation_c,
        ffrr_period_c,
        ffrr_primary_object_record_name_c,
        ffrr_revenue_contract_c,
        ffrr_revenue_forecast_transaction_c,
        ffrr_template_c,
        ffrr_total_revenue_c,
        ffrr_value_c,
        id,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        opportunity_c,
        opportunity_product_mirror_c,
        system_modstamp

    from source

)

select * from renamed
