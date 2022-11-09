
with source as (

    select * from {{ source('raw_salesforce', 'user_provisioning_config_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        approval_required,
        connected_app_id,
        created_by_id,
        created_date,
        developer_name,
        enabled,
        enabled_operations,
        id,
        is_deleted,
        language,
        last_modified_by_id,
        last_modified_date,
        last_recon_date_time,
        master_label,
        named_credential_id,
        namespace_prefix,
        notes,
        on_update_attributes,
        recon_filter,
        system_modstamp,
        user_account_mapping,
        _fivetran_deleted

    from source

)

select * from renamed
