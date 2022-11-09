
with source as (

    select * from {{ source('raw_netsuite', 'customization_type') }}

),

renamed as (

    select
        customization_type_extid,
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
