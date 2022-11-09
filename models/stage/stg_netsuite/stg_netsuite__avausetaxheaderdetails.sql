
with source as (

    select * from {{ source('raw_netsuite', 'avausetaxheaderdetails') }}

),

renamed as (

    select
        accrued_tax_amount,
        accrued_use_tax,
        avausetaxheaderdetails_extid,
        avausetaxheaderdetails_id,
        date_created,
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
        total_tax

    from source

)

select * from renamed
