
with source as (

    select * from {{ source('raw_salesforce', 'record_type') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        business_process_id,
        created_by_id,
        created_date,
        description,
        developer_name,
        is_active,
        last_modified_by_id,
        last_modified_date,
        name,
        namespace_prefix,
        sobject_type,
        system_modstamp

    from source

)

select * from renamed
