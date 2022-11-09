
with source as (

    select * from {{ source('raw_netsuite_sa', 'tax_audit_files_configuration') }}

),

renamed as (

    select
        tax_audit_files_configurati_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        key_0,
        last_modified_date,
        parent_id,
        report_name,
        subsidiary_id,
        tax_audit_files_configurati_ex,
        value_0

    from source

)

select * from renamed
