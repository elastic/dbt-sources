
with source as (

    select * from {{ source('raw_salesforce', 'saml_sso_config') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        attribute_format,
        attribute_name,
        audience,
        created_by_id,
        created_date,
        developer_name,
        error_url,
        execution_user_id,
        identity_location,
        identity_mapping,
        is_deleted,
        issuer,
        language,
        last_modified_by_id,
        last_modified_date,
        login_url,
        logout_url,
        master_label,
        namespace_prefix,
        options_sp_init_binding,
        options_user_provisioning,
        request_signature_method,
        saml_jit_handler_id,
        single_logout_binding,
        single_logout_url,
        system_modstamp,
        validation_cert,
        version,
        _fivetran_deleted,
        options_use_config_request_method,
        options_use_same_digest_algo_for_signing

    from source

)

select * from renamed
