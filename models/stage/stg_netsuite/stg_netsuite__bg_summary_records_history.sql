
with source as (

    select * from {{ source('raw_netsuite', 'bg_summary_records_history') }}

),

renamed as (

    select
        accounting_book_id,
        asset_type_id,
        bg_summary_records_extid,
        bg_summary_records_id,
        bg_summary_records_name,
        class_id,
        date_created,
        department_id,
        depreciation_account_id,
        depreciation_charge_account_id,
        depreciation_date,
        depreciation_posting_refere_id,
        group_info,
        history_count,
        is_inactive,
        journal_internal_id,
        journal_memo,
        last_modified_date,
        location_id,
        parent_id,
        project_id,
        subsidiary_id,
        summary_value

    from source

)

select * from renamed
