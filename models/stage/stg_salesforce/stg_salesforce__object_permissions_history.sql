
with source as (

    select * from {{ source('raw_salesforce', 'object_permissions_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        last_modified_by_id,
        last_modified_date,
        parent_id,
        permissions_create,
        permissions_delete,
        permissions_edit,
        permissions_modify_all_records,
        permissions_read,
        permissions_view_all_records,
        sobject_type,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
