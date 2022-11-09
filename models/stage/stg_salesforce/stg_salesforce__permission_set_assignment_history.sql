
with source as (

    select * from {{ source('raw_salesforce', 'permission_set_assignment_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        assignee_id,
        permission_set_id,
        system_modstamp,
        permission_set_group_id,
        _fivetran_deleted

    from source

)

select * from renamed
