
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_subsidiary_map') }}

),

renamed as (

    select
        item_id,
        subsidiary_id,
        _fivetran_synced,
        _fivetran_deleted,
        date_deleted

    from source

)

select * from renamed
