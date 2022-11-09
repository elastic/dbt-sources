
with source as (

    select * from {{ source('raw_saas_search', 'invoice_history') }}

),

renamed as (

    select
        id,
        account_id,
        app_search_account_id,
        stripe_invoice_id,
        description,
        total_due,
        state,
        period_start,
        period_end,
        line_items,
        proration,
        invoice_type,
        paid_at,
        coupon_amount_off,
        coupon_percent_off,
        last_sync_at,
        credit_card,
        partition_date

    from source

)

select * from renamed
