
with source as (

    select * from {{ source('raw_netsuite_sa', 'avareconcilebatchrecords') }}

),

renamed as (

    select
        avareconcilebatchrecords_id,
        _fivetran_deleted,
        _fivetran_synced,
        avareconcilebatchrecords_extid,
        avatax_cr__doc_date,
        avatax_cr__doc_status,
        avatax_cr__doc_type,
        avatax_cr__tax_date,
        avatax_cr__total_amount,
        avatax_cr__total_amount_forei,
        avatax_cr__total_discount,
        avatax_cr__total_exemption,
        avatax_cr__total_tax,
        avatax_cr__total_tax_foreign,
        avatax_cr__total_taxable,
        avatax_doc_date,
        avatax_doc_status,
        avatax_doc_type,
        avatax_tax_date,
        avatax_total_amount,
        avatax_total_discount,
        avatax_total_exemption,
        avatax_total_tax,
        avatax_total_taxable,
        batch_doc_no,
        batch_doc_type,
        batch_id,
        batch_name,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        multicurrency,
        netsuite_doc_date,
        netsuite_doc_type,
        netsuite_total_amount,
        netsuite_total_amount_foreign,
        netsuite_total_discount,
        netsuite_total_tax,
        netsuite_total_tax_foreign,
        parent_id,
        status

    from source

)

select * from renamed
