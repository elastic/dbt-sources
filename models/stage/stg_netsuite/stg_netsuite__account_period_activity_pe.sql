
with source as (

    select * from {{ source('raw_netsuite', 'account_period_activity_pe') }}

),

renamed as (

    select
        account_id,
        accounting_book_id,
        accounting_period_id,
        amount,
        balance_from_subsidiary_id,
        department_id,
        is_hidden_custom_line,
        subsidiary_id

    from source

)

select * from renamed
