
with source as (

    select * from {{ source('raw_salesforce', 'user_provisioning_request_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        app_name,
        approval_status,
        connected_app_id,
        created_by_id,
        created_date,
        external_user_id,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        manager_id,
        name,
        operation,
        owner_id,
        parent_id,
        retry_count,
        salesforce_user_id,
        schedule_date,
        state,
        system_modstamp,
        user_prov_account_id,
        user_prov_config_id

    from source

)

select * from renamed
