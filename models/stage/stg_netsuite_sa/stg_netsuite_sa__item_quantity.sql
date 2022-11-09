
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_quantity') }}

),

renamed as (

    select
        item_id,
        item_quantity_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        max_count,
        min_count

    from source

)

select * from renamed
