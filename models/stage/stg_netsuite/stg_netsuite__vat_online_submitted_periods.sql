
with source as (

    select * from {{ source('raw_netsuite', 'vat_online_submitted_periods') }}

),

renamed as (

    select
        accounting_book_id,
        date_created,
        folder_name,
        istestmode,
        is_export_file,
        is_inactive,
        last_modified_date,
        nexus,
        online_form,
        parent_id,
        pdf_file,
        pdf_form,
        properties,
        request,
        response,
        signature,
        status,
        submitted_timestamp,
        submitted_type,
        submit_date,
        submit_user_id,
        subsidiary_id,
        tax_period,
        vat_online_submitted_period_ex,
        vat_online_submitted_period_id

    from source

)

select * from renamed
