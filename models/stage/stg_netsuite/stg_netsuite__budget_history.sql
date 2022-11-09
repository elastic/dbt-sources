
with source as (

    select * from {{ source('raw_netsuite', 'budget_history') }}

),

renamed as (

    select
        accounting_period_id,
        account_id,
        amount,
        budget_date,
        budget_id,
        category_id,
        class_id,
        customer_id,
        department_id,
        item_id,
        location_id,
        subsidiary_id,
        accounting_book_id

    from source

)

select * from renamed
