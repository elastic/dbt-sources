
with source as (

    select * from {{ source('raw_salesforce', 'support_contact_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        already_a_partner_user_c,
        changed_email_counter_c,
        contact_c,
        created_by_id,
        created_date,
        currency_iso_code,
        customer_portal_user_c,
        de_provisioned_c,
        email_c,
        first_name_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_name_c,
        last_referenced_date,
        last_viewed_date,
        name,
        no_longer_with_company_c,
        owner_id,
        provisioned_c,
        role_c,
        subscription_c,
        system_modstamp,
        unique_record_identifier_c,
        subscription_start_date_2_c,
        subscription_start_date_c,
        subscription_status_c,
        subscription_support_level_c,
        certification_c,
        hidden_c,
        is_certified_engineer_c,
        source_c

    from source

)

select * from renamed
