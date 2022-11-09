
with source as (

    select * from {{ source('raw_netsuite', 'subsidiary_book_map') }}

),

renamed as (

    select
        accounting_book_id,
        contract_defer_expense_acct_id,
        contract_expense_acct_id,
        currency_id,
        exchange_rate,
        status,
        subsidiary_id

    from source

)

select * from renamed
