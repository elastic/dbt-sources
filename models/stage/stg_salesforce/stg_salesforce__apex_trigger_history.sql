
with source as (

    select * from {{ source('raw_salesforce', 'apex_trigger_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_deleted,
        _fivetran_synced,
        api_version,
        body,
        body_crc,
        created_by_id,
        created_date,
        is_valid,
        last_modified_by_id,
        last_modified_date,
        length_without_comments,
        name,
        namespace_prefix,
        status,
        system_modstamp,
        table_enum_or_id,
        usage_after_delete,
        usage_after_insert,
        usage_after_undelete,
        usage_after_update,
        usage_before_delete,
        usage_before_insert,
        usage_before_update,
        usage_is_bulk

    from source

)

select * from renamed
