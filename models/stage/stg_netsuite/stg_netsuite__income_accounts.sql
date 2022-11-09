
with source as (

    select * from {{ source('raw_netsuite', 'income_accounts') }}

),

renamed as (

    select
        account_number,
        comments,
        current_balance,
        date_last_modified,
        desription,
        full_name,
        income_account_extid,
        income_account_id,
        is_including_child_subs,
        is_summary,
        isinactive,
        legal_name,
        name,
        parent_id

    from source

)

select * from renamed
