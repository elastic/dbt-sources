
with source as (

    select * from {{ source('raw_netsuite', 'transaction_line_book_map_history') }}

),

renamed as (

    select
        accounting_book_id,
        account_id,
        alt_sales_amount,
        amortization_residual,
        amount,
        amount_linked,
        bill_variance_status,
        catch_up_period_id,
        date_created,
        date_last_modified,
        date_revenue_committed,
        date_rev_rec_end,
        date_rev_rec_start,
        gl_number,
        gl_sequence,
        gl_sequence_id,
        gross_amount,
        is_hold_rev_rec,
        quantity_committed,
        schedule_id,
        transaction_id,
        transaction_line_id,
        vsoe_allocation

    from source

)

select * from renamed
