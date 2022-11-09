
with source as (

    select * from {{ source('raw_netsuite_sa', 'bg_summary_records_history') }}

),

renamed as (

    select
        bg_summary_records_id,
        _fivetran_deleted,
        _fivetran_synced,
        accounting_book_id,
        asset_type_id,
        bg_summary_records_extid,
        bg_summary_records_name,
        class_id,
        date_created,
        date_deleted,
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
        summary_value,
        partition_date

    from source

)

select * from renamed
