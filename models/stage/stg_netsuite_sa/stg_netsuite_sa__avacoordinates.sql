
with source as (

    select * from {{ source('raw_netsuite_sa', 'avacoordinates') }}

),

renamed as (

    select
        avacoordinates_id,
        _fivetran_deleted,
        _fivetran_synced,
        address_id,
        avacoordinates_extid,
        customer_id,
        customer_internal_id,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        latitude,
        longitude,
        parent_id

    from source

)

select * from renamed
