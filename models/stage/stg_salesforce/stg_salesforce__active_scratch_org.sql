
with source as (

    select * from {{ source('raw_salesforce', 'active_scratch_org') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        description,
        edition,
        expiration_date,
        features,
        has_sample_data,
        is_deleted,
        last_login_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        namespace,
        org_name,
        owner_id,
        scratch_org,
        scratch_org_info_id,
        signup_email,
        signup_instance,
        signup_trial_days,
        signup_username,
        system_modstamp

    from source

)

select * from renamed
