
with source as (

    select * from {{ source('raw_salesforce', 'scratch_org_info_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        admin_email,
        auth_code,
        connected_app_callback_url,
        connected_app_consumer_key,
        country,
        created_by_id,
        created_date,
        currency_iso_code,
        deleted_by,
        deleted_date,
        description,
        duration_days,
        edition,
        error_code,
        expiration_date,
        features,
        has_sample_data,
        instance,
        is_deleted,
        language,
        last_login_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        namespace,
        org_name,
        owner_id,
        package_2_ancestor_ids,
        scratch_org,
        signup_country,
        signup_email,
        signup_instance,
        signup_language,
        signup_trial_days,
        signup_username,
        status,
        system_modstamp,
        username,
        login_url,
        release,
        source_org

    from source

)

select * from renamed
