
with source as (

    select * from {{ source('raw_netsuite', 'expense_categories_history') }}

),

renamed as (

    select
        avatax_taxcode,
        description,
        expense_account_id,
        expense_category_extid,
        expense_category_id,
        expense_item_id,
        isinactive,
        name,
        rate_required,
        is_personal_corp_card_expense

    from source

)

select * from renamed
