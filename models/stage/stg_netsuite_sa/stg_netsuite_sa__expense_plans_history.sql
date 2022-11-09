
with source as (

    select * from {{ source('raw_netsuite_sa', 'expense_plans_history') }}

),

renamed as (

    select
        plan_id,
        _fivetran_deleted,
        _fivetran_synced,
        accounting_period_id,
        comments,
        date_created,
        date_deleted,
        date_last_modified,
        end_date,
        expense_plan_status,
        expense_plan_type,
        expense_rule_id,
        is_hold_expense,
        plan_number,
        reforecast_method,
        related_revenue_arrangement_id,
        related_revenue_element_id,
        residual,
        start_date,
        transaction_book_id,
        transaction_doc_id,
        transaction_line_id,
        partition_date

    from source

)

select * from renamed
