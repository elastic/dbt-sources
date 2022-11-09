
with source as (

    select * from {{ source('raw_netsuite', 'expense_plans_history') }}

),

renamed as (

    select
        accounting_period_id,
        comments,
        date_created,
        date_last_modified,
        end_date,
        expense_plan_status,
        expense_plan_type,
        expense_rule_id,
        is_hold_expense,
        plan_id,
        plan_number,
        reforecast_method,
        related_revenue_arrangement_id,
        related_revenue_element_id,
        residual,
        start_date,
        transaction_book_id,
        transaction_doc_id,
        transaction_line_id

    from source

)

select * from renamed
