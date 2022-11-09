
with source as (

    select * from {{ source('raw_salesforce', 'zoom_app_zoom_webinar_registrant_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        zoom_app_address_c,
        zoom_app_city_c,
        zoom_app_comments_c,
        zoom_app_country_c,
        zoom_app_email_c,
        zoom_app_external_key_c,
        zoom_app_first_name_c,
        zoom_app_industry_c,
        zoom_app_job_title_c,
        zoom_app_join_url_1_c,
        zoom_app_join_url_c,
        zoom_app_last_name_c,
        zoom_app_number_of_employees_c,
        zoom_app_org_c,
        zoom_app_organization_c,
        zoom_app_phone_c,
        zoom_app_state_c,
        zoom_app_status_c,
        zoom_app_zip_c,
        zoom_app_zoom_webinar_c

    from source

)

select * from renamed
