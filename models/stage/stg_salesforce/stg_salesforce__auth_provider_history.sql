
with source as (

    select * from {{ source('raw_salesforce', 'auth_provider_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        authorize_url,
        consumer_key,
        consumer_secret,
        created_date,
        custom_metadata_type_record,
        default_scopes,
        developer_name,
        error_url,
        execution_user_id,
        friendly_name,
        icon_url,
        id_token_issuer,
        logout_url,
        options_include_org_id_in_id,
        options_send_access_token_in_header,
        options_send_client_credentials_in_header,
        plugin_id,
        provider_type,
        registration_handler_id,
        token_url,
        user_info_url,
        link_kickoff_url,
        oauth_kickoff_url,
        sso_kickoff_url,
        _fivetran_deleted,
        apple_team,
        ec_key,
        options_send_secret_in_apis

    from source

)

select * from renamed
