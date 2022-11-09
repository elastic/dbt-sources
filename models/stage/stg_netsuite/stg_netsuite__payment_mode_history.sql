
with source as (

    select * from {{ source('raw_netsuite', 'payment_mode_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        payment_mode_extid

    from source

)

select * from renamed
