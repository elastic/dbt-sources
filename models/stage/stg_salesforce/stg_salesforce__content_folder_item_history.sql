
with source as (

    select * from {{ source('raw_salesforce', 'content_folder_item_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        content_size,
        created_by_id,
        created_date,
        file_extension,
        file_type,
        id,
        is_deleted,
        is_folder,
        last_modified_by_id,
        last_modified_date,
        parent_content_folder_id,
        system_modstamp,
        title,
        _fivetran_deleted

    from source

)

select * from renamed
