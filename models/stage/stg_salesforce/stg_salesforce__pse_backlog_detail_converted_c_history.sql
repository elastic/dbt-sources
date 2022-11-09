
with source as (

    select * from {{ source('raw_salesforce', 'pse_backlog_detail_converted_c_history') }}

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
        pse_backlog_calculation_c,
        pse_backlog_detail_c,
        pse_billings_c,
        pse_bookings_c,
        pse_end_date_c,
        pse_external_time_cost_c,
        pse_held_resource_request_external_cost_c,
        pse_held_resource_request_hours_c,
        pse_held_resource_request_internal_cost_c,
        pse_held_resource_request_revenue_c,
        pse_inactive_project_backlog_c,
        pse_internal_time_cost_c,
        pse_is_reusable_c,
        pse_milestone_cost_c,
        pse_milestone_revenue_c,
        pse_project_c,
        pse_resource_requests_cost_held_external_c,
        pse_resource_requests_cost_held_internal_c,
        pse_resource_requests_cost_unheld_c,
        pse_resource_requests_hours_held_c,
        pse_resource_requests_hours_unheld_c,
        pse_resource_requests_revenue_held_c,
        pse_resource_requests_revenue_unheld_c,
        pse_scheduled_days_c,
        pse_scheduled_hours_c,
        pse_start_date_c,
        pse_time_period_c,
        pse_time_revenue_c,
        pse_unheld_resource_request_cost_c,
        pse_unheld_resource_request_hours_c,
        pse_unheld_resource_request_revenue_c,
        system_modstamp

    from source

)

select * from renamed
