
with source as (

    select * from {{ source('raw_salesforce', 'pse_time_variance_detail_c') }}

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
        pse_allowed_variance_over_c,
        pse_allowed_variance_under_c,
        pse_billable_hours_c,
        pse_credited_hours_c,
        pse_end_date_c,
        pse_exclude_billable_hours_c,
        pse_exclude_credited_hours_c,
        pse_exclude_excluded_hours_c,
        pse_excluded_hours_c,
        pse_group_c,
        pse_nonbillable_hours_c,
        pse_practice_c,
        pse_region_c,
        pse_resource_c,
        pse_start_date_c,
        pse_time_variance_calculation_c,
        pse_total_hours_c,
        pse_variance_c,
        pse_work_calendar_hours_c,
        system_modstamp,
        psaws_time_variance_difference_c,
        psaws_is_resource_current_user_c,
        psaws_is_last_week_c

    from source

)

select * from renamed
