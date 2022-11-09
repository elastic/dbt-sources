
with source as (

    select * from {{ source('raw_netsuite', 'posting_account_activity_history') }}

),

renamed as (

    select
        accounting_book_id,
        accounting_period_id,
        account_id,
        activity_date,
        amount,
        amount_foreign,
        class_id,
        department_id,
        entity_id,
        item_id,
        location_id,
        partner_id,
        promotion_code_id,
        quantity,
        sales_rep_id,
        subsidiary_id

    from source

)

select * from renamed
