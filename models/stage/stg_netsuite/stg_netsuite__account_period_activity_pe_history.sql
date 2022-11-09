
with source as (

    select * from {{ source('raw_netsuite', 'account_period_activity_pe_history') }}

),

renamed as (

    select
        accounting_book_id,
        accounting_period_id,
        account_id,
        amount,
        balance_from_subsidiary_id,
        department_id,
        is_hidden_custom_line,
        subsidiary_id

    from source

)

select * from renamed
