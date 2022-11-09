
with source as (

    select * from {{ source('raw_salesforce', 'enrollment_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        account_c,
        completion_date_c,
        contact_c,
        contact_email_c,
        course_name_c,
        created_by_id,
        created_date,
        currency_iso_code,
        docebo_id_c,
        enrollment_course_c,
        enrollment_id_c,
        first_name_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_name_c,
        last_referenced_date,
        last_synced_date_time_c,
        last_viewed_date,
        location_c,
        name,
        okta_id_c,
        opportunity_c,
        owner_id,
        provider_c,
        quote_line_item_c,
        session_code_c,
        session_id_c,
        status_c,
        system_modstamp,
        type_c,
        session_name_c,
        training_location_c,
        course_code_c,
        send_survey_c,
        has_opted_out_of_email_c,
        lead_c,
        active_from_c,
        active_until_c,
        campaign_content_c,
        campaign_medium_c,
        campaign_name_c,
        campaign_source_c,
        campaign_url_c

    from source

)

select * from renamed
