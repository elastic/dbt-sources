
with source as (

    select * from {{ source('raw_salesforce', 'content_folder_member_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        child_record_id,
        created_by_id,
        created_date,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        parent_content_folder_id,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
