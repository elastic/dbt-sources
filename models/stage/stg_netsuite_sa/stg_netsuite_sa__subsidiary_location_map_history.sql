
with source as (

    select * from {{ source('raw_netsuite_sa', 'subsidiary_location_map_history') }}

),

renamed as (

    select
        location_id,
        subsidiary_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
