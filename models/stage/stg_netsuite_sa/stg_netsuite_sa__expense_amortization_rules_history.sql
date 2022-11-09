
with source as (

    select * from {{ source('raw_netsuite_sa', 'expense_amortization_rules_history') }}

),

renamed as (

    select
        expense_rule_id,
        _fivetran_deleted,
        _fivetran_synced,
        amount_source,
        contra_account_id,
        date_created,
        date_deleted,
        date_last_modified,
        end_date_change_impact,
        end_date_source,
        initial_amount,
        name,
        period_offset,
        recognition_period,
        reforecast_method,
        residual,
        rule_method,
        start_date_source,
        start_offset,
        term_in_days,
        term_in_months,
        partition_date

    from source

)

select * from renamed
