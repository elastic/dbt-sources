
with source as (

    select * from {{ source('raw_netsuite', 'maintenancesupport_types_history') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        maintenancesupport_types_extid,
        maintenancesupport_types_id,
        maintenancesupport_types_name,
        maintenance_percentage,
        parent_id

    from source

)

select * from renamed
