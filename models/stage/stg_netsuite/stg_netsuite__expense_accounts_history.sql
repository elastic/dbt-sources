
with source as (

    select * from {{ source('raw_netsuite', 'expense_accounts_history') }}

),

renamed as (

    select
        account_number,
        comments,
        current_balance,
        date_last_modified,
        desription,
        expense_account_extid,
        expense_account_id,
        full_name,
        isinactive,
        is_including_child_subs,
        is_summary,
        legal_name,
        name,
        parent_id

    from source

)

select * from renamed
