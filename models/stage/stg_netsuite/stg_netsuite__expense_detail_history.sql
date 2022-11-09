
with source as (

    select * from {{ source('raw_netsuite', 'expense_detail_history') }}

),

renamed as (

    select
        amount,
        currency_id,
        exchange_rate,
        expense_category_id,
        expense_date,
        expense_detail_id,
        foreign_amount,
        foreign_rate,
        has_receipt,
        memo,
        quantity,
        rate,
        reference_number,
        tax_amount,
        transaction_id,
        transaction_line_id,
        is_paid_by_corp_credit_card

    from source

)

select * from renamed
