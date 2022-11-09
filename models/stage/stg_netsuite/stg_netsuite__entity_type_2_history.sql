
with source as (

    select * from {{ source('raw_netsuite', 'entity_type_2_history') }}

),

renamed as (

    select
        date_created,
        entity_type_2_extid,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
