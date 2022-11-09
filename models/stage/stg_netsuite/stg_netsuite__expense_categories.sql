
with source as (

    select * from {{ source('raw_netsuite', 'expense_categories') }}

),

renamed as (

    select
        avatax_taxcode,
        description,
        expense_account_id,
        expense_category_extid,
        expense_category_id,
        expense_item_id,
        is_personal_corp_card_expense,
        isinactive,
        name,
        rate_required

    from source

)

select * from renamed
