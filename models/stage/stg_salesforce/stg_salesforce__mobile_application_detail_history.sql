
with source as (

    select * from {{ source('raw_salesforce', 'mobile_application_detail_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        app_install_url,
        application_binary_file_name,
        application_bundle_identifier,
        application_file_length,
        application_icon,
        application_icon_file_name,
        created_by_id,
        created_date,
        developer_name,
        device_platform,
        device_type,
        id,
        is_deleted,
        is_enterprise_app,
        language,
        last_modified_by_id,
        last_modified_date,
        master_label,
        minimum_os_version,
        namespace_prefix,
        system_modstamp,
        version,
        _fivetran_deleted

    from source

)

select * from renamed
