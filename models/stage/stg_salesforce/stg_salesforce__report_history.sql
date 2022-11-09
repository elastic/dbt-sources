
with source as (

    select * from {{ source('raw_salesforce', 'report_history') }}

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
        folder_name,
        format,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_run_date,
        last_viewed_date,
        name,
        namespace_prefix,
        owner_id,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
