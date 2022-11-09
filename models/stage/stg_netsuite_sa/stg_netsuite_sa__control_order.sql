
with source as (

    select * from {{ source('raw_netsuite_sa', 'control_order') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        control_order_extid,
        date_created,
        date_deleted,
        is_record_inactive,
        last_modified_date,
        list_item_name

    from source

)

select * from renamed