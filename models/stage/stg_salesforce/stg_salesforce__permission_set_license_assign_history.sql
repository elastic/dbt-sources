
with source as (

    select * from {{ source('raw_salesforce', 'permission_set_license_assign_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        assignee_id,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        permission_set_license_id,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
