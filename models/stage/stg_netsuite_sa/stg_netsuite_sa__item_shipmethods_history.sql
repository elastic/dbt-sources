
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_shipmethods_history') }}

),

renamed as (

    select
        item_id,
        shipmethod_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        is_default,
        partition_date

    from source

)

select * from renamed
