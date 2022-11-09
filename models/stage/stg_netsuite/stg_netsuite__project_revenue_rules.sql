
with source as (

    select * from {{ source('raw_netsuite', 'project_revenue_rules') }}

),

renamed as (

    select
        billing_rate_card_id,
        created_by,
        date_created,
        date_last_modified,
        description,
        fixed_amount_type,
        fixed_schedule_type,
        is_inactive,
        is_revenue_reconciled,
        last_modified_by,
        project_id,
        project_revenue_rule_extid,
        project_revenue_rule_id,
        rate_multiplier,
        rate_source_type_id,
        recurrence_end_date,
        recurrence_frequency,
        recurrence_period,
        recurrence_start_date,
        rounding_type_id,
        rule_name,
        rule_type_id,
        saved_search_id,
        service_item_id

    from source

)

select * from renamed
