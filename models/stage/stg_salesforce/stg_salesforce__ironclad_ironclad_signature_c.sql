
with source as (

    select * from {{ source('raw_salesforce', 'ironclad_ironclad_signature_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ironclad_ironclad_workflow_c,
        ironclad_signature_name_c,
        ironclad_signer_email_c,
        ironclad_signer_name_c,
        ironclad_signer_status_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
