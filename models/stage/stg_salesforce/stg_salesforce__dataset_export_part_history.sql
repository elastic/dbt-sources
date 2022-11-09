
with source as (

    select * from {{ source('raw_salesforce', 'dataset_export_part_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        compressed_data_file_length,
        created_by_id,
        created_date,
        data_file_length,
        dataset_export_id,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        owner,
        part_number,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
