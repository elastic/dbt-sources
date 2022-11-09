
with source as (

    select * from {{ source('raw_netsuite', 'avataxheaderdetails_history') }}

),

renamed as (

    select
        avataxheaderdetails_extid,
        avataxheaderdetails_id,
        avatax_document_id,
        base_currency,
        date_created,
        document_date,
        document_status,
        document_type,
        exchange_rate,
        foreign_currency,
        gsthst_tax,
        is_inactive,
        last_modified_date,
        multicurrency,
        netsuite_document_internal_id,
        netsuite_document_no,
        netsuite_document_type,
        parent_id,
        pst_tax,
        scheduled,
        shipping_code,
        subsidiary_id,
        tax_calculation_date,
        total_amount,
        total_discount,
        total_nontaxable,
        total_tax,
        total_taxable

    from source

)

select * from renamed
