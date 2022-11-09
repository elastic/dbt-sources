
with source as (

    select * from {{ source('raw_netsuite_sa', 'vendor_types_history') }}

),

renamed as (

    select
        vendor_type_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        isinactive,
        name,
        parent_id,
        vendor_type_extid,
        partition_date

    from source

)

select * from renamed
