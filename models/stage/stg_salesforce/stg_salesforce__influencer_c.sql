
with source as (

    select * from {{ source('raw_salesforce', 'influencer_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_c,
        business_unit_c,
        company_c,
        created_by_id,
        created_date,
        currency_iso_code,
        description_c,
        disposition_to_elastic_c,
        exec_alignment_c,
        inactive_c,
        influencer_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_opportunity_closed_date_c,
        name,
        opportunity_id_c,
        owner_id,
        primary_c,
        role_c,
        subscription_c,
        system_modstamp,
        unique_record_identifier_c,
        resync_docebo_c,
        email_c,
        is_training_sub_c,
        last_customer_info_email_sent_c,
        questionnaire_url_c,
        subscription_add_on_project_c,
        subscription_multiple_projects_c,
        subscription_project_info_last_submitted_c,
        subscription_start_date_c,
        subscription_support_level_c,
        csm_email_c,
        csm_first_name_c,
        csm_last_name_c,
        activity_level_c,
        subscription_end_date_c,
        training_name_c,
        webform_url_c,
        created_date_time_c,
        support_subscription_provisioning_date_c,
        subscription_name_c,
        title_c,
        subscription_name_trimmed_c,
        encrypted_subscription_id_c,
        subscription_max_support_contacts_c,
        influencer_name_c

    from source

)

select * from renamed
