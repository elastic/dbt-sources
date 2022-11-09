
with source as (

    select * from {{ source('raw_salesforce', 'comm_subscription_consent') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        comm_subscription_channel_type_id,
        consent_captured_date_time,
        consent_captured_source,
        consent_giver_id,
        contact_point_id,
        created_by_id,
        created_date,
        currency_iso_code,
        effective_from_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        effective_to_date,
        party_role_id,
        business_brand_id

    from source

)

select * from renamed
