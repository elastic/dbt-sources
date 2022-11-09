
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_vendor_map') }}

),

renamed as (

    select
        item_id,
        vendor_id,
        _fivetran_synced,
        is_preferred,
        subsidiary_id,
        vendor_code,
        _fivetran_deleted,
        date_deleted

    from source

)

select * from renamed
