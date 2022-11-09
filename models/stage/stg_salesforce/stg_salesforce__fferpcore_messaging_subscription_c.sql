
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_messaging_subscription_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_bulk_capacity_c,
        fferpcore_deliver_using_background_process_c,
        fferpcore_handler_c,
        fferpcore_message_type_c,
        fferpcore_owner_product_c,
        fferpcore_product_proxy_c,
        fferpcore_synchronous_delivery_capacity_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        fferpcore_correlation_field_c,
        fferpcore_custom_c,
        fferpcore_delivery_order_c,
        fferpcore_describer_c,
        fferpcore_description_c,
        fferpcore_documentation_url_c,
        fferpcore_enabled_c,
        fferpcore_exclude_from_self_c,
        fferpcore_filters_c,
        fferpcore_handler_data_c,
        fferpcore_identifier_c,
        fferpcore_link_control_developer_name_c,
        fferpcore_link_control_for_c,
        fferpcore_obsolete_c,
        fferpcore_target_object_c,
        fferpcore_uniqueness_constraint_c,
        fferpcore_virtual_object_consumer_c,
        fferpcore_declarative_mapping_count_c,
        fferpcore_max_child_count_c,
        fferpcore_child_count_field_c,
        fferpcore_type_c

    from source

)

select * from renamed
