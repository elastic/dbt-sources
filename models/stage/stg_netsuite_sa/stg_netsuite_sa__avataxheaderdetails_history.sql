
with source as (

    select * from {{ source('raw_netsuite_sa', 'avataxheaderdetails_history') }}

),

renamed as (

    select
        avataxheaderdetails_id,
        _fivetran_deleted,
        _fivetran_synced,
        avatax_document_id,
        avataxheaderdetails_extid,
        base_currency,
        date_created,
        date_deleted,
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
        total_taxable,
        partition_date

    from source

)

select * from renamed
