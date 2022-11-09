
with source as (

    select * from {{ source('raw_netsuite', 'order_charge_type_list_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        order_charge_type_list_extid

    from source

)

select * from renamed
