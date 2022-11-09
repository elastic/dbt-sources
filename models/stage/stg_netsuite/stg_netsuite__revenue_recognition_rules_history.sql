
with source as (

    select * from {{ source('raw_netsuite', 'revenue_recognition_rules_history') }}

),

renamed as (

    select
        amount_source,
        date_created,
        date_last_modified,
        end_date_change_impact,
        end_date_source,
        initial_amount,
        name,
        period_offset,
        recognition_period,
        reforecast_method,
        rev_rec_rule_id,
        rule_method,
        start_date_source,
        start_offset,
        term_in_days,
        term_in_months

    from source

)

select * from renamed
