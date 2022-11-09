
with source as (

    select * from {{ source('raw_netsuite_sa', 'type_of_goods_history') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_record_inactive,
        last_modified_date,
        list_item_name,
        type_of_goods_extid,
        partition_date

    from source

)

select * from renamed
