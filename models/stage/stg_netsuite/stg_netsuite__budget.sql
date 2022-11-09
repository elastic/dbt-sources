
with source as (

    select * from {{ source('raw_netsuite', 'budget') }}

),

renamed as (

    select
        account_id,
        accounting_book_id,
        accounting_period_id,
        amount,
        budget_date,
        budget_id,
        category_id,
        class_id,
        customer_id,
        department_id,
        item_id,
        location_id,
        subsidiary_id

    from source

)

select * from renamed
