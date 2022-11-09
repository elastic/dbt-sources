
with source as (

    select * from {{ source('raw_salesforce', 'contact_point_consent') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        capture_contact_point_type,
        capture_date,
        capture_source,
        contact_point_id,
        contact_point_type_consent_id,
        created_by_id,
        created_date,
        data_use_purpose_id,
        double_consent_capture_date,
        effective_from,
        effective_to,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        privacy_consent_status,
        system_modstamp,
        engagement_channel_type_id,
        party_role_id,
        business_brand_id

    from source

)

select * from renamed
