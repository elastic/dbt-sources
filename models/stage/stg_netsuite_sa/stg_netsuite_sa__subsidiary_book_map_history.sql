
with source as (

    select * from {{ source('raw_netsuite_sa', 'subsidiary_book_map_history') }}

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
        status,
        partition_date

    from source

)

select * from renamed
