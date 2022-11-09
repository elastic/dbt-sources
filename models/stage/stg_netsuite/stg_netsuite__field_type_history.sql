
with source as (

    select * from {{ source('raw_netsuite', 'field_type_history') }}

),

renamed as (

    select
        date_created,
        field_type_extid,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
