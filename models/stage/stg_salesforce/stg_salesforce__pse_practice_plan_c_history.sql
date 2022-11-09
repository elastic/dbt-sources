
with source as (

    select * from {{ source('raw_salesforce', 'pse_practice_plan_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        pse_end_date_c,
        pse_planned_billings_c,
        pse_planned_bookings_c,
        pse_planned_external_costs_c,
        pse_planned_internal_costs_c,
        pse_planned_margin_c,
        pse_planned_revenue_c,
        pse_planned_utilization_c,
        pse_practice_c,
        pse_practice_owner_c,
        pse_practice_plan_for_c,
        pse_start_date_c,
        pse_time_period_c,
        pse_time_period_type_c,
        pse_unique_name_c,
        system_modstamp

    from source

)

select * from renamed
