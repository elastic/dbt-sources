
with source as (

    select * from {{ source('raw_salesforce', 'license_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        company_c,
        contact_c,
        country_c,
        created_by_id,
        created_date,
        currency_iso_code,
        deliver_to_c,
        email_c,
        environment_c,
        eula_token_c,
        expires_on_c,
        first_name_c,
        ip_address_c,
        is_deleted,
        is_deleted_c,
        issued_on_c,
        last_activity_date,
        last_downloaded_timestamp_c,
        last_eula_timestamp_c,
        last_modified_by_id,
        last_modified_date,
        last_name_c,
        last_referenced_date,
        last_viewed_date,
        lead_c,
        license_id_c,
        license_type_c,
        max_instances_c,
        name,
        nodes_c,
        opportunity_url_c,
        owner_id,
        subscription_c,
        subscription_url_c,
        system_modstamp,
        download_link_c,
        duration_c,
        is_active_c,
        license_expires_in_days_c,
        term_c,
        delivered_on_c,
        delivery_status_c,
        license_link_c

    from source

)

select * from renamed
