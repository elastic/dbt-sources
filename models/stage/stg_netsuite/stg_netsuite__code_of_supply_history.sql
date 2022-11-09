
with source as (

    select * from {{ source('raw_netsuite', 'code_of_supply_history') }}

),

renamed as (

    select
        code_of_supply_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
