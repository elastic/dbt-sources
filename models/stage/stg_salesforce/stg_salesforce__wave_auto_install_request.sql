
with source as (

    select * from {{ source('raw_salesforce', 'wave_auto_install_request') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        configuration,
        created_by_id,
        created_date,
        currency_iso_code,
        failed_reason,
        folder_id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        request_log,
        request_status,
        request_type,
        system_modstamp,
        template_api_name,
        template_version

    from source

)

select * from renamed
