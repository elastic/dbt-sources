
with source as (

    select * from {{ source('raw_netsuite_sa', 'expense_accounts_history') }}

),

renamed as (

    select
        expense_account_id,
        _fivetran_synced,
        account_number,
        comments,
        current_balance,
        date_last_modified,
        desription,
        expense_account_extid,
        full_name,
        is_including_child_subs,
        is_summary,
        isinactive,
        legal_name,
        name,
        parent_id,
        _fivetran_deleted,
        date_deleted,
        partition_date

    from source

)

select * from renamed
