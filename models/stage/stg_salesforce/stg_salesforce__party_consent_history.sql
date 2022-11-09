
with source as (

    select * from {{ source('raw_salesforce', 'party_consent_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        data_type,
        field,
        is_deleted,
        new_value,
        old_value,
        party_consent_id,
        action,
        capture_contact_point_type,
        capture_date,
        capture_source,
        currency_iso_code,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        party_id,
        privacy_consent_status,
        system_modstamp,
        double_consent_capture_date,
        effective_from,
        effective_to

    from source

)

select * from renamed
