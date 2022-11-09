
with source as (

    select * from {{ source('raw_salesforce', 'tenant_usage_entitlement') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount_used,
        created_by_id,
        created_date,
        current_amount_allowed,
        end_date,
        frequency,
        has_rollover,
        is_deleted,
        is_persistent_resource,
        last_modified_by_id,
        last_modified_date,
        master_label,
        overage_grace,
        resource_group_key,
        setting,
        start_date,
        system_modstamp,
        usage_date,
        _fivetran_deleted

    from source

)

select * from renamed
