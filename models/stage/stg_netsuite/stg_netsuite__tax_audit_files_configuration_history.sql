
with source as (

    select * from {{ source('raw_netsuite', 'tax_audit_files_configuration_history') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        key_0,
        last_modified_date,
        parent_id,
        report_name,
        subsidiary_id,
        tax_audit_files_configurati_ex,
        tax_audit_files_configurati_id,
        value_0

    from source

)

select * from renamed
