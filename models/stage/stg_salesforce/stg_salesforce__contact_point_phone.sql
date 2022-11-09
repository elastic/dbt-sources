
with source as (

    select * from {{ source('raw_salesforce', 'contact_point_phone') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        active_from_date,
        active_to_date,
        area_code,
        best_time_to_contact_end_time,
        best_time_to_contact_start_time,
        best_time_to_contact_timezone,
        created_by_id,
        created_date,
        extension_number,
        formatted_international_phone_number,
        formatted_national_phone_number,
        is_business_phone,
        is_deleted,
        is_fax_capable,
        is_personal_phone,
        is_primary,
        is_sms_capable,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        parent_id,
        phone_type,
        system_modstamp,
        telephone_number,
        usage_type,
        preference_rank

    from source

)

select * from renamed
