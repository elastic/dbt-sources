
with source as (

    select * from {{ source('raw_netsuite_sa', 'transaction_line_book_map_history') }}

),

renamed as (

    select
        accounting_book_id,
        transaction_id,
        transaction_line_id,
        _fivetran_synced,
        account_id,
        alt_sales_amount,
        amortization_residual,
        amount,
        amount_linked,
        bill_variance_status,
        catch_up_period_id,
        date_created,
        date_rev_rec_end,
        date_rev_rec_start,
        date_revenue_committed,
        gl_number,
        gl_sequence,
        gl_sequence_id,
        gross_amount,
        is_hold_rev_rec,
        quantity_committed,
        schedule_id,
        vsoe_allocation,
        date_last_modified,
        _fivetran_deleted,
        date_deleted,
        partition_date

    from source

)

select * from renamed
