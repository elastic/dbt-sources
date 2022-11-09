
with source as (

    select * from {{ source('raw_netsuite_sa', 'expense_categories') }}

),

renamed as (

    select
        expense_category_id,
        _fivetran_deleted,
        _fivetran_synced,
        avatax_taxcode,
        date_deleted,
        description,
        expense_account_id,
        expense_category_extid,
        expense_item_id,
        is_personal_corp_card_expense,
        isinactive,
        name,
        rate_required

    from source

)

select * from renamed
