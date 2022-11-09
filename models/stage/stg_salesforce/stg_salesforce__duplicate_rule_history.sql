
with source as (

    select * from {{ source('raw_salesforce', 'duplicate_rule_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        developer_name,
        is_active,
        is_deleted,
        language,
        last_modified_by_id,
        last_modified_date,
        last_viewed_date,
        master_label,
        namespace_prefix,
        sobject_subtype,
        sobject_type,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
