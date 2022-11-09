
with source as (

    select * from {{ source('raw_salesforce', 'email_services_function') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        address_inactive_action,
        apex_class_id,
        attachment_option,
        authentication_failure_action,
        authorization_failure_action,
        authorized_senders,
        created_by_id,
        created_date,
        error_routing_address,
        function_inactive_action,
        function_name,
        is_active,
        is_authentication_required,
        is_error_routing_enabled,
        is_text_attachments_as_binary,
        is_tls_required,
        last_modified_by_id,
        last_modified_date,
        over_limit_action,
        system_modstamp

    from source

)

select * from renamed
