
with source as (

    select * from {{ source('raw_netsuite', 'last_used_mask_values') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        last_used_mask_values_extid,
        list_id,
        list_item_name

    from source

)

select * from renamed
