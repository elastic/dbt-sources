
with source as (

    select * from {{ source('raw_salesforce', 'auth_config_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        auth_options_auth_provider,
        auth_options_saml,
        auth_options_username_password,
        created_by_id,
        created_date,
        developer_name,
        is_active,
        is_deleted,
        language,
        last_modified_by_id,
        last_modified_date,
        master_label,
        namespace_prefix,
        system_modstamp,
        type,
        url,
        auth_options_certificate,
        _fivetran_deleted

    from source

)

select * from renamed
