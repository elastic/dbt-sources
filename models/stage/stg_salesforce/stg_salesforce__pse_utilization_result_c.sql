
with source as (

    select * from {{ source('raw_salesforce', 'pse_utilization_result_c') }}

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
        pse_billable_assignment_hours_c,
        pse_billable_timecard_hours_c,
        pse_calendar_hours_c,
        pse_credited_assignment_hours_c,
        pse_credited_timecard_hours_c,
        pse_date_c,
        pse_group_c,
        pse_held_resource_request_hours_c,
        pse_last_updated_run_c,
        pse_non_billable_assignment_hours_c,
        pse_non_billable_timecard_hours_c,
        pse_practice_c,
        pse_region_c,
        pse_resource_c,
        pse_resource_role_c,
        pse_time_excluded_assignment_hours_c,
        pse_time_excluded_timecard_hours_c,
        pse_utilization_excluded_assignment_hours_c,
        pse_utilization_excluded_held_rr_hours_c,
        pse_utilization_excluded_timecard_hours_c,
        system_modstamp,
        pse_unheld_resource_request_hours_c,
        pse_utilization_excluded_unheld_rr_hours_c,
        pse_unique_identifier_c

    from source

)

select * from renamed
