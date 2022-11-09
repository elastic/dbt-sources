
with source as (

    select * from {{ source('raw_salesforce', 'external_data_source') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        auth_provider_id,
        created_by_id,
        created_date,
        custom_configuration,
        developer_name,
        endpoint,
        is_deleted,
        is_writable,
        language,
        large_icon_id,
        last_modified_by_id,
        last_modified_date,
        master_label,
        namespace_prefix,
        principal_type,
        protocol,
        repository,
        small_icon_id,
        system_modstamp,
        type,
        _fivetran_deleted

    from source

)

select * from renamed
