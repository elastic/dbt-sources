
with source as (

    select * from {{ source('raw_salesforce', 'mailmerge_template') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        body_length,
        created_by_id,
        created_date,
        description,
        filename,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_used_date,
        name,
        security_options_attachment_has_flash,
        security_options_attachment_has_xssthreat,
        security_options_attachment_scanned_for_xss,
        security_options_attachment_scannedfor_flash,
        system_modstamp

    from source

)

select * from renamed
