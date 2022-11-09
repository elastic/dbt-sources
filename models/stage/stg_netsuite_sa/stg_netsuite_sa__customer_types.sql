
with source as (

    select * from {{ source('raw_netsuite_sa', 'customer_types') }}

),

renamed as (

    select
        customer_type_id,
        _fivetran_deleted,
        _fivetran_synced,
        customer_type_extid,
        date_deleted,
        date_last_modified,
        isinactive,
        name,
        parent_id

    from source

)

select * from renamed
