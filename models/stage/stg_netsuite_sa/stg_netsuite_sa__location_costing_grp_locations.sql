
with source as (

    select * from {{ source('raw_netsuite_sa', 'location_costing_grp_locations') }}

),

renamed as (

    select
        location_costing_group_id,
        location_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
