
with source as (

    select * from {{ source('raw_netsuite_sa', 'avaaddressvalidationbatch_location_map_history') }}

),

renamed as (

    select
        avaaddressvalidationbatch_id,
        location_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
