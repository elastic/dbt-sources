
with source as (

    select * from {{ source('raw_salesforce', 'named_credential_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        callout_options_allow_merge_fields_in_body,
        callout_options_allow_merge_fields_in_header,
        callout_options_generate_authorization_header,
        created_by_id,
        created_date,
        developer_name,
        endpoint,
        is_deleted,
        language,
        last_modified_by_id,
        last_modified_date,
        master_label,
        namespace_prefix,
        principal_type,
        system_modstamp,
        auth_provider_id,
        _fivetran_deleted,
        auth_token_endpoint_url,
        jwt_audience,
        jwt_formula_subject,
        jwt_issuer,
        jwt_text_subject,
        jwt_validity_period_seconds

    from source

)

select * from renamed
