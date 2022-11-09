
with source as (

    select * from {{ source('raw_netsuite_sa', 'country_location') }}

),

renamed as (

    select
        country_location_id,
        _fivetran_deleted,
        _fivetran_synced,
        country_location_extid,
        country_location_name,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
