
with source as (

    select * from {{ source('raw_salesforce', 'business_process_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        created_date,
        description,
        is_active,
        last_modified_by_id,
        last_modified_date,
        name,
        namespace_prefix,
        system_modstamp,
        table_enum_or_id

    from source

)

select * from renamed
