
with source as (

    select * from {{ source('raw_salesforce', 'authorization_form_consent_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        authorization_form_consent_id,
        created_by_id,
        created_date,
        data_type,
        field,
        is_deleted,
        new_value,
        old_value,
        authorization_form_text_id,
        consent_captured_date_time,
        consent_captured_source,
        consent_captured_source_type,
        consent_giver_id,
        document_version_id,
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
