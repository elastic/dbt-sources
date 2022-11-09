
with source as (

    select * from {{ source('raw_netsuite_sa', 'vat_online_submitted_periods_history') }}

),

renamed as (

    select
        vat_online_submitted_period_id,
        _fivetran_deleted,
        _fivetran_synced,
        accounting_book_id,
        date_created,
        date_deleted,
        folder_name,
        is_export_file,
        is_inactive,
        istestmode,
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
        submit_date,
        submit_user_id,
        submitted_timestamp,
        submitted_type,
        subsidiary_id,
        tax_period,
        vat_online_submitted_period_ex,
        partition_date

    from source

)

select * from renamed
