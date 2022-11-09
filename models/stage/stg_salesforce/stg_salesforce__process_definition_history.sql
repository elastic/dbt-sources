
with source as (

    select * from {{ source('raw_salesforce', 'process_definition_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        description,
        developer_name,
        last_modified_by_id,
        last_modified_date,
        lock_type,
        name,
        state,
        system_modstamp,
        table_enum_or_id,
        type,
        _fivetran_deleted

    from source

)

select * from renamed
