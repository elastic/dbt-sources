
with source as (

    select * from {{ source('raw_salesforce', 'dsfs_docu_sign_envelope_document_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        dsfs_attachment_id_c,
        dsfs_attachment_name_c,
        dsfs_attachment_name_ex_c,
        dsfs_docu_sign_envelope_id_c,
        dsfs_document_id_c,
        dsfs_document_name_c,
        dsfs_document_order_c,
        dsfs_extension_c,
        dsfs_external_document_id_c,
        dsfs_sfdocument_type_c,
        dsfs_size_c,
        dsfs_validation_message_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        system_modstamp

    from source

)

select * from renamed
