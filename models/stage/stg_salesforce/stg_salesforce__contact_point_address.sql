
with source as (

    select * from {{ source('raw_salesforce', 'contact_point_address') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        active_from_date,
        active_to_date,
        address_type,
        best_time_to_contact_end_time,
        best_time_to_contact_start_time,
        best_time_to_contact_timezone,
        city,
        contact_point_phone_id,
        country,
        created_by_id,
        created_date,
        geocode_accuracy,
        is_default,
        is_deleted,
        is_primary,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        latitude,
        longitude,
        name,
        owner_id,
        parent_id,
        postal_code,
        state,
        street,
        system_modstamp,
        usage_type,
        preference_rank

    from source

)

select * from renamed
