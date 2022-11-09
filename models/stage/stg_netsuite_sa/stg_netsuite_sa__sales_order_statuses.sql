
with source as (

    select * from {{ source('raw_netsuite_sa', 'sales_order_statuses') }}

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
        sales_order_statuses_extid

    from source

)

select * from renamed
