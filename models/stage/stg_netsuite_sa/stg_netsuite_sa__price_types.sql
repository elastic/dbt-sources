
with source as (

    select * from {{ source('raw_netsuite_sa', 'price_types') }}

),

renamed as (

    select
        price_type_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        date_last_modified,
        discount_percentage,
        isinactive,
        isonline,
        name,
        price_type_extid

    from source

)

select * from renamed
