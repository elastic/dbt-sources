
with source as (

    select * from {{ source('raw_netsuite_sa', 'units_type_history') }}

),

renamed as (

    select
        units_type_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        date_last_modified,
        isinactive,
        name,
        units_type_extid,
        partition_date

    from source

)

select * from renamed
