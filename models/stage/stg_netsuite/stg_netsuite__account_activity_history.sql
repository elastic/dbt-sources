
with source as (

    select * from {{ source('raw_netsuite', 'account_activity_history') }}

),

renamed as (

    select
        accounting_book_id,
        account_id,
        activity_date,
        amount,
        department_id,
        is_hidden_custom_line,
        subsidiary_id

    from source

)

select * from renamed
