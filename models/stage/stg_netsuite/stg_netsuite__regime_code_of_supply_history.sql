
with source as (

    select * from {{ source('raw_netsuite', 'regime_code_of_supply_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        regime_code_of_supply_extid

    from source

)

select * from renamed
