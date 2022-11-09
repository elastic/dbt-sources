
with source as (

    select * from {{ source('raw_salesforce', 'contact_clean_info_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        city,
        cleaned_by_job,
        cleaned_by_user,
        contact_id,
        contact_status_data_dot_com,
        country,
        created_by_id,
        created_date,
        currency_iso_code,
        data_dot_com_id,
        email,
        first_name,
        geocode_accuracy,
        is_deleted,
        is_different_city,
        is_different_country,
        is_different_country_code,
        is_different_email,
        is_different_first_name,
        is_different_last_name,
        is_different_phone,
        is_different_postal_code,
        is_different_state,
        is_different_state_code,
        is_different_street,
        is_different_title,
        is_flagged_wrong_address,
        is_flagged_wrong_email,
        is_flagged_wrong_name,
        is_flagged_wrong_phone,
        is_flagged_wrong_title,
        is_inactive,
        is_reviewed_address,
        is_reviewed_email,
        is_reviewed_name,
        is_reviewed_phone,
        is_reviewed_title,
        last_matched_date,
        last_modified_by_id,
        last_modified_date,
        last_name,
        last_status_changed_by_id,
        last_status_changed_date,
        latitude,
        longitude,
        name,
        phone,
        postal_code,
        state,
        street,
        system_modstamp,
        title

    from source

)

select * from renamed
