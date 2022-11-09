
with source as (

    select * from {{ source('raw_salesforce', 'app_menu_item') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        application_id,
        canvas_access_method,
        canvas_enabled,
        canvas_options,
        canvas_reference_id,
        canvas_selected_locations,
        canvas_url,
        created_by_id,
        created_date,
        description,
        icon_url,
        info_url,
        is_accessible,
        is_deleted,
        is_registered_device_only,
        is_using_admin_authorization,
        is_visible,
        label,
        last_modified_by_id,
        last_modified_date,
        logo_url,
        mobile_app_binary_id,
        mobile_app_install_url,
        mobile_app_installed_date,
        mobile_app_installed_version,
        mobile_app_ver,
        mobile_device_type,
        mobile_min_os_ver,
        mobile_platform,
        mobile_start_url,
        name,
        namespace_prefix,
        sort_order,
        start_url,
        system_modstamp,
        type,
        user_sort_order,
        _fivetran_deleted

    from source

)

select * from renamed
