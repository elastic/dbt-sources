
with source as (

    select * from {{ source('raw_netsuite', 'resource_groups_history') }}

),

renamed as (

    select
        date_created,
        date_last_modified,
        description,
        is_inactive,
        resource_group_extid,
        resource_group_id,
        resource_group_name

    from source

)

select * from renamed
