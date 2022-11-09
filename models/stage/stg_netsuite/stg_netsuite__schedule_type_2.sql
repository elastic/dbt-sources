
with source as (

    select * from {{ source('raw_netsuite', 'schedule_type_2') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        schedule_type_2_extid

    from source

)

select * from renamed