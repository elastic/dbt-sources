
with source as (

    select * from {{ source('raw_salesforce', 'connected_application_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        last_modified_by_id,
        last_modified_date,
        mobile_session_timeout,
        mobile_start_url,
        name,
        options_allow_admin_approved_users_only,
        options_has_session_level_policy,
        options_is_internal,
        options_refresh_token_validity_metric,
        pin_length,
        refresh_token_validity_period,
        start_url,
        system_modstamp,
        options_full_content_push_notifications,
        _fivetran_deleted

    from source

)

select * from renamed
