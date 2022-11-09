
with source as (

    select * from {{ source('raw_netsuite_sa', 'expense_detail') }}

),

renamed as (

    select
        transaction_id,
        transaction_line_id,
        _fivetran_synced,
        amount,
        currency_id,
        exchange_rate,
        expense_category_id,
        expense_date,
        expense_detail_id,
        foreign_amount,
        foreign_rate,
        has_receipt,
        is_paid_by_corp_credit_card,
        memo,
        quantity,
        rate,
        reference_number,
        tax_amount,
        _fivetran_deleted,
        date_deleted

    from source

)

select * from renamed
