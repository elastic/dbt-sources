
with source as (

    select * from {{ source('raw_salesforce', 'network_activity_audit_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        action,
        created_by_id,
        created_date,
        description,
        entity_created_by_id,
        entity_id,
        entity_type,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        network_id,
        parent_entity_id,
        parent_entity_type,
        system_modstamp

    from source

)

select * from renamed
