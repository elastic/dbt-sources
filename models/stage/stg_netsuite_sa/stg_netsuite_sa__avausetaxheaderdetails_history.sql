
with source as (

    select * from {{ source('raw_netsuite_sa', 'avausetaxheaderdetails_history') }}

),

renamed as (

    select
        avausetaxheaderdetails_id,
        _fivetran_deleted,
        _fivetran_synced,
        accrued_tax_amount,
        accrued_use_tax,
        avausetaxheaderdetails_extid,
        date_created,
        date_deleted,
        document_date,
        document_status,
        document_type,
        is_inactive,
        journal_entry_id,
        last_modified_date,
        netsuite_document_internal_id,
        netsuite_document_no,
        parent_id,
        subsidiary_id,
        total_tax,
        partition_date

    from source

)

select * from renamed