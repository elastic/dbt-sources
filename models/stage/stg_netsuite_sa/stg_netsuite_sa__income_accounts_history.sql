
with source as (

    select * from {{ source('raw_netsuite_sa', 'income_accounts_history') }}

),

renamed as (

    select
        income_account_id,
        _fivetran_synced,
        account_number,
        comments,
        current_balance,
        date_last_modified,
        desription,
        full_name,
        income_account_extid,
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
