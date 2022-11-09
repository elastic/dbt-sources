
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_contact_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        contact_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        lead_c,
        learndot_city_c,
        learndot_country_alpha_2_code_c,
        learndot_country_name_c,
        learndot_custom_field_10_c,
        learndot_custom_field_1_c,
        learndot_custom_field_2_c,
        learndot_custom_field_3_c,
        learndot_custom_field_4_c,
        learndot_custom_field_5_c,
        learndot_custom_field_6_c,
        learndot_custom_field_7_c,
        learndot_custom_field_8_c,
        learndot_custom_field_9_c,
        learndot_department_c,
        learndot_email_c,
        learndot_email_preference_c,
        learndot_emailverified_c,
        learndot_enabled_c,
        learndot_external_id_c,
        learndot_fax_c,
        learndot_first_name_c,
        learndot_homephone_c,
        learndot_id_c,
        learndot_last_login_c,
        learndot_last_name_c,
        learndot_last_password_reset_c,
        learndot_learndot_account_c,
        learndot_learndot_created_c,
        learndot_mobile_phone_c,
        learndot_number_of_forum_posts_c,
        learndot_number_of_successful_logins_c,
        learndot_officephone_c,
        learndot_postal_code_c,
        learndot_receive_message_notifications_c,
        learndot_receive_new_events_notification_c,
        learndot_receive_newsletter_c,
        learndot_receive_promotional_offers_c,
        learndot_region_c,
        learndot_salesforce_contact_c,
        learndot_salutation_c,
        learndot_staff_enabled_c,
        learndot_street_1_c,
        learndot_street_2_c,
        learndot_tax_id_c,
        learndot_title_c,
        name,
        owner_id,
        system_modstamp,
        learndot_user_groups_c

    from source

)

select * from renamed
