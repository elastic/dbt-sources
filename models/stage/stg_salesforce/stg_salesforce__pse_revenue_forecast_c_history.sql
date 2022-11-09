
with source as (

    select * from {{ source('raw_salesforce', 'pse_revenue_forecast_c_history') }}

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
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        pse_actuals_c,
        pse_last_updated_c,
        pse_milestone_c,
        pse_project_c,
        pse_revenue_pending_recognition_c,
        pse_revenue_recognized_to_date_c,
        pse_scheduled_revenue_c,
        pse_time_period_c,
        system_modstamp,
        pse_opportunity_c,
        pse_unscheduled_revenue_c,
        pse_corp_actuals_c,
        pse_corp_currency_c,
        pse_corp_revenue_pending_recognition_c,
        pse_corp_revenue_recognized_to_date_c,
        pse_corp_scheduled_revenue_c,
        pse_corp_unscheduled_revenue_c,
        pse_time_period_end_c,
        pse_time_period_start_c

    from source

)

select * from renamed
