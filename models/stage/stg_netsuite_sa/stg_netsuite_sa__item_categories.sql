
with source as (

    select * from {{ source('raw_netsuite_sa', 'item_categories') }}

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
        list_item_name

    from source

)

select * from renamed
