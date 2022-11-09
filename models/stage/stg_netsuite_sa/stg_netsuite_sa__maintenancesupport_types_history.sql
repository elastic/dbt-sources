
with source as (

    select * from {{ source('raw_netsuite_sa', 'maintenancesupport_types_history') }}

),

renamed as (

    select
        maintenancesupport_types_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        maintenance_percentage,
        maintenancesupport_types_extid,
        maintenancesupport_types_name,
        parent_id,
        partition_date

    from source

)

select * from renamed
