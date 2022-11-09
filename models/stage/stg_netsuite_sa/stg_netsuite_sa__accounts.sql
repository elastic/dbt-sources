
with source as (

    select * from {{ source('raw_netsuite_sa', 'accounts') }}

),

renamed as (

    select
        account_id,
        _fivetran_synced,
        account_extid,
        accountnumber,
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
        is_balancesheet,
        is_included_in_elimination,
        is_included_in_reval,
        is_including_child_subs,
        is_leftside,
        is_summary,
        isinactive,
        legal_name,
        location_id,
        name,
        openbalance,
        parent_id,
        type_name,
        type_sequence,
        us_gaap_balance_sheet_group_id,
        restrict_expense_departments,
        disallow_auto_approval_under_,
        _fivetran_deleted,
        date_deleted,
        writeoff_account,
        require_je_name,
        revpro_default_department_id

    from source

)

select * from renamed
