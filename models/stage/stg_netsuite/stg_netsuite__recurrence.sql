
with source as (

    select * from {{ source('raw_netsuite', 'recurrence') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        recurrence_extid

    from source

)

select * from renamed
