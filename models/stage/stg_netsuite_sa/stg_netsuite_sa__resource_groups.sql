
with source as (

    select * from {{ source('raw_netsuite_sa', 'resource_groups') }}

),

renamed as (

    select
        resource_group_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        date_last_modified,
        description,
        is_inactive,
        resource_group_extid,
        resource_group_name

    from source

)

select * from renamed
