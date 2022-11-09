
with source as (

    select * from {{ source('raw_salesforce', 'field_permissions_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        field,
        parent_id,
        permissions_edit,
        permissions_read,
        sobject_type,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
