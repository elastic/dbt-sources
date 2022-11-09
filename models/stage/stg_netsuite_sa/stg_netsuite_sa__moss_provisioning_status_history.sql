
with source as (

    select * from {{ source('raw_netsuite_sa', 'moss_provisioning_status_history') }}

),

renamed as (

    select
        moss_provisioning_status_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        error_0,
        is_inactive,
        last_modified_date,
        moss_provisioning_status_extid,
        nexus,
        parent_id,
        provisioning_status,
        is_eu_subsidiary,
        partition_date

    from source

)

select * from renamed
