
with source as (

    select * from {{ source('raw_salesforce', 'party_consent') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        action,
        capture_contact_point_type,
        capture_date,
        capture_source,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
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
        effective_to,
        effective_from,
        party_role_id,
        business_brand_id

    from source

)

select * from renamed
