
with source as (

    select * from {{ source('raw_salesforce', 'comm_subscription_consent_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        comm_subscription_consent_id,
        created_by_id,
        created_date,
        data_type,
        field,
        is_deleted,
        new_value,
        old_value,
        comm_subscription_channel_type_id,
        consent_captured_date_time,
        consent_captured_source,
        consent_giver_id,
        contact_point_id,
        currency_iso_code,
        effective_from_date,
        effective_to_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
