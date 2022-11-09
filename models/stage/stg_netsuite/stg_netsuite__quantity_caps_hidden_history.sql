
with source as (

    select * from {{ source('raw_netsuite', 'quantity_caps_hidden_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        quantity_caps_hidden_extid

    from source

)

select * from renamed
