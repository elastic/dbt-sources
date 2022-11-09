
with source as (

    select * from {{ source('raw_netsuite_sa', 'subsidiary_book_map') }}

),

renamed as (

    select
        accounting_book_id,
        subsidiary_id,
        _fivetran_deleted,
        _fivetran_synced,
        contract_defer_expense_acct_id,
        contract_expense_acct_id,
        currency_id,
        date_deleted,
        exchange_rate,
        status

    from source

)

select * from renamed
