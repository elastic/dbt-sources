
with source as (

    select * from {{ source('raw_salesforce', 'dataset_export_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        compressed_metadata_length,
        created_by_id,
        created_date,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        metadata_length,
        owner,
        publisher_info,
        publisher_type,
        status,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
