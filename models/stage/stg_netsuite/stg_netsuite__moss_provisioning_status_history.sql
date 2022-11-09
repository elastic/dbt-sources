
with source as (

    select * from {{ source('raw_netsuite', 'moss_provisioning_status_history') }}

),

renamed as (

    select
        date_created,
        error_0,
        is_inactive,
        last_modified_date,
        moss_provisioning_status_extid,
        moss_provisioning_status_id,
        nexus,
        parent_id,
        provisioning_status

    from source

)

select * from renamed
