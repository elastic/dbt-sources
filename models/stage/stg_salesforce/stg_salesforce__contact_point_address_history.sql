
with source as (

    select * from {{ source('raw_salesforce', 'contact_point_address_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        contact_point_address_id,
        created_by_id,
        created_date,
        data_type,
        field,
        is_deleted,
        new_value,
        old_value,
        active_from_date,
        active_to_date,
        address_type,
        best_time_to_contact_end_time,
        best_time_to_contact_start_time,
        best_time_to_contact_timezone,
        city,
        contact_point_phone_id,
        country,
        geocode_accuracy,
        is_default,
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
        preference_rank,
        state,
        street,
        system_modstamp,
        usage_type

    from source

)

select * from renamed
