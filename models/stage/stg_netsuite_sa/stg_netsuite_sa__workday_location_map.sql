
with source as (

    select * from {{ source('raw_netsuite_sa', 'workday_location_map') }}

),

renamed as (

    select
        workday_location_map_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        netsuite_location_id,
        parent_id,
        workday_location_map_extid,
        workday_location_map_name,
        concur_location

    from source

)

select * from renamed
