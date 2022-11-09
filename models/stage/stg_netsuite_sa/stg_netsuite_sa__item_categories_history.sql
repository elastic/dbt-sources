
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_categories_history') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_record_inactive,
        item_categories_extid,
        last_modified_date,
        list_item_name,
        partition_date

    from source

)

select * from renamed
