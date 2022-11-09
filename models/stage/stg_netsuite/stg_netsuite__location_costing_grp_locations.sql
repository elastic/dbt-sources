
with source as (

    select * from {{ source('raw_netsuite', 'location_costing_grp_locations') }}

),

renamed as (

    select
        location_costing_group_id,
        location_id

    from source

)

select * from renamed
