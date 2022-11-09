
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_vendor_pricing') }}

),

renamed as (

    select
        fivetran_index,
        item_id,
        _fivetran_deleted,
        _fivetran_synced,
        cost_0,
        cost_is_percentage,
        currency_id,
        date_deleted,
        subsidiary_id,
        vendor_id

    from source

)

select * from renamed
