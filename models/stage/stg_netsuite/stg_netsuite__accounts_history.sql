
with source as (

    select * from {{ source('raw_netsuite', 'accounts_history') }}

),

renamed as (

    select
        accountnumber,
        account_extid,
        account_id,
        bank_account_number,
        cashflow_rate_type,
        category_1099_misc,
        category_1099_misc_mthreshold,
        class_id,
        currency_id,
        date_last_modified,
        deferral_account_id,
        department_id,
        description,
        full_description,
        full_name,
        general_rate_type,
        isinactive,
        is_balancesheet,
        is_included_in_elimination,
        is_included_in_reval,
        is_including_child_subs,
        is_leftside,
        is_summary,
        legal_name,
        location_id,
        name,
        openbalance,
        parent_id,
        type_name,
        type_sequence,
        us_gaap_balance_sheet_group_id

    from source

)

select * from renamed
