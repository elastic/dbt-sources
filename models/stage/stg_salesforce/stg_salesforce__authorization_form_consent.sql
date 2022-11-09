
with source as (

    select * from {{ source('raw_salesforce', 'authorization_form_consent') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        authorization_form_text_id,
        consent_captured_date_time,
        consent_captured_source,
        consent_captured_source_type,
        consent_giver_id,
        created_by_id,
        created_date,
        document_version_id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        related_record_id,
        status,
        system_modstamp

    from source

)

select * from renamed
