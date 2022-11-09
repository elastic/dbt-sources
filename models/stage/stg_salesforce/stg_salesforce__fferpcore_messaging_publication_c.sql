
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_messaging_publication_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_message_type_c,
        fferpcore_owner_product_c,
        fferpcore_product_proxy_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        fferpcore_correlation_field_c,
        fferpcore_custom_c,
        fferpcore_declarative_fields_c,
        fferpcore_describer_c,
        fferpcore_description_c,
        fferpcore_documentation_url_c,
        fferpcore_enabled_c,
        fferpcore_identifier_c,
        fferpcore_link_control_developer_name_c,
        fferpcore_link_control_for_c,
        fferpcore_obsolete_c,
        fferpcore_sending_hook_c,
        fferpcore_source_object_c,
        fferpcore_uniqueness_constraint_c,
        fferpcore_use_process_builder_c,
        fferpcore_virtual_object_c,
        fferpcore_virtual_object_provider_c,
        fferpcore_declarative_node_count_c

    from source

)

select * from renamed
